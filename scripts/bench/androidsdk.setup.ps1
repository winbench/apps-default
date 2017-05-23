$sdkDir = App-Dir "Bench.AndroidSDK"
$tmpDir = Get-ConfigValue "TempDir"
$toolsDir = "$sdkDir\tools"

function GetProxyInfo($propertyName)
{
    $p = [regex]"^https?:\/\/(?<host>.+?):(?<port>\d+)\/?$"

    $proxyValue = Get-ConfigValue $propertyName
    $m = $p.Match($proxyValue)
    if (!$m.Success)
    {
        Write-Error "Incompatible proxy definition in Bench configuration: $proxyValue"
        exit
    }
    $proxyHost = $m.Groups["host"].Value
    $proxyPort = [int]$m.Groups["port"].Value
    return @{
        "Host" = $proxyHost
        "Port" = $proxyPort
    }
}

pushd

# Move tools directory to temp to update the SDK
$tmpToolsDir = Empty-Dir "$tmpDir\androidsdk"
Copy-Item $toolsDir "$tmpToolsDir\tools" -Recurse

# Call update function
$managerArgs = @("--sdk_root=$sdkDir")
if (Get-ConfigBooleanValue "UseProxy")
{
    $httpProxy = GetProxyInfo "HttpProxy"
    $managerArgs += "--proxy=http"
    $managerArgs += "--proxy_host=$($httpProxy.Host)"
    $managerArgs += "--proxy_port=$($httpProxy.Port)"
}
& "$tmpToolsDir\tools\bin\sdkmanager" --update @managerArgs
if ($LastExitCode -ne 0)
{
    Purge-Dir $sdkDir
    Write-Error "Updating Android SDK failed."
    exit
}

Purge-Dir $tmpToolsDir

$packages = Get-AppConfigListValue "Bench.AndroidSDK" "InitialPackages"
$avdIntelImage = $null
$containsHaxm = $false
foreach ($package in $packages)
{
    Write-Host "Installing Android SDK Package '$package'..."
    & "$sdkDir\tools\bin\sdkmanager" $package @managerArgs
    if ($LastExitCode -ne 0)
    {
        Write-Error "Installing package '$package' via Android SDK Manager failed."
        exit
    }
    if (!$avdIntelImage -and $package.StartsWith("system-images") -and $package.Contains("x86"))
    {
        $avdIntelImage = $package
    }
    if ($package -eq "extras;intel;Hardware_Accelerated_Execution_Manager")
    {
        $containsHaxm = $true
    }
}

if ($containsHaxm -and $avdIntelImage)
{
    Write-Host "Creating initial AVD for X86..."

    & "$sdkDir\tools\bin\avdmanager" create avd --name bench_x86 -k $avdIntelImage --force
    if ($LastExitCode -ne 0)
    {
        Write-Error "Failed to create the AVD for X86 platform."
        exit
    }
}

if ($containsHaxm)
{
    Write-Host "Installing Intel HAXM on the Windows system."
    Write-Warning "Requires admin privileges and hardware virtualization enabled."
    $haxmDir = "$sdkDir\extras\intel\Hardware_Accelerated_Execution_Manager"
    pushd $haxmDir
    .\silent_install -log "$haxmDir\silent_install.log" -ld "$haxmDir\silent_install_detailed.log"
    if ($LastExitCode -eq 0)
    {
        Write-Host "The installation of Intel HAXM was successful".
    }
    elseif ($LastExitCode -eq 2)
    {
        Write-Host "The installation of Intel HAXM was successful."
        Write-Warning "But you need to reboot the system before using the Android emulator with a X86 AVD."
    }
    else
    {
        Write-Warning "The Installation of the Intel HAXM was not completed successful."
        Write-Warning "You will not be able to run the X86 Android image."
    }
    popd
}

Write-Host "Finished installing Android SDK."

popd