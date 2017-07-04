$gradle = App-Exe "Bench.Gradle"

$utf8 = New-Object System.Text.UTF8Encoding($false)

function GetProxyInfo()
{
    $result = @{}
    $result.UseProxy = Get-ConfigBooleanValue "UseProxy"

    if (!$result.UseProxy) { return $result }

    $result.Bypass = Get-ConfigListValue "ProxyBypass"

    $p = [regex]"^https?:\/\/(?<host>.+?):(?<port>\d+)\/?$"

    $httpProxyValue = Get-ConfigValue "HttpProxy"
    $m = $p.Match($httpProxyValue)
    if (!$m.Success)
    {
        Write-Error "Incompatible HTTP proxy definition in Bench configuration: $httpProxyValue"
        return $null
    }
    $result.HttpHost = $m.Groups["host"].Value
    $result.HttpPort = [int]$m.Groups["port"].Value

    $httpsProxyValue = Get-ConfigValue "HttpsProxy"
    $m = $p.Match($httpsProxyValue)
    if (!$m.Success)
    {
        Write-Error "Incompatible HTTPS proxy definition in Bench configuration: $httpsProxyValue"
        return $null
    }
    $result.HttpsHost = $m.Groups["host"].Value
    $result.HttpsPort = [int]$m.Groups["port"].Value

    return $result
}

function SetConfigProperty($text, $name, $value = $null)
{
    $escName = [regex]::Escape($name)
    $p = New-Object System.Text.RegularExpressions.Regex ("^\s*#?\s*${escName}=.*$", "Multiline")
    if ($p.IsMatch($text))
    {
        if ($value -ne $null)
        {
            return $p.Replace($text, "$name=$value")
        }
        else
        {
            return $p.Replace($text, "")
        }
    }
    else
    {
        if ($value -ne $null)
        {
            return $text.TrimEnd() + [Environment]::NewLine + "$name=$value" + [Environment]::NewLine
        }
        else
        {
            return $text
        }
    }
}

function FixLineEndings($text)
{
    return $text.Replace("`r`n", "`n").Replace("`n", [Environment]::NewLine)
}

$windowsUserProfile = [IO.Path]::GetDirectoryName((Get-ItemProperty -Path "HKCU:/Software/Microsoft/Windows/CurrentVersion/Explorer/Shell Folders" -Name "Desktop").Desktop)
$propertiesFile = "$windowsUserProfile\gradle.properties"
$pc = "# Bench Managed"
if (Test-Path $propertiesFile)
{
    $pc = [IO.File]::ReadAllText($propertiesFile, $utf8).Trim()
}
if ([string]::IsNullOrEmpty($pc) -or $pc.StartsWith("# Bench Managed"))
{
    $proxyInfo = GetProxyInfo
    if ($proxyInfo.UseProxy)
    {
        $bypass = [string]::Join("|", $proxyInfo.Bypass)
        $pc = SetConfigProperty $pc "systemProp.http.proxyHost" $proxyInfo.HttpHost
        $pc = SetConfigProperty $pc "systemProp.http.proxyPort" $proxyInfo.HttpPort
        $pc = SetConfigProperty $pc "systemProp.http.nonProxyHosts" $bypass
        $pc = SetConfigProperty $pc "systemProp.https.proxyHost" $proxyInfo.HttpsHost
        $pc = SetConfigProperty $pc "systemProp.https.proxyPort" $proxyInfo.HttpsPort
        $pc = SetConfigProperty $pc "systemProp.https.nonProxyHosts" $bypass
    }
    else
    {
        $pc = SetConfigProperty $pc "systemProp.http.proxyHost"
        $pc = SetConfigProperty $pc "systemProp.http.proxyPort"
        $pc = SetConfigProperty $pc "systemProp.http.nonProxyHosts"
        $pc = SetConfigProperty $pc "systemProp.https.proxyHost"
        $pc = SetConfigProperty $pc "systemProp.https.proxyPort"
        $pc = SetConfigProperty $pc "systemProp.https.nonProxyHosts"
    }
    $pc = FixLineEndings $pc
    [IO.File]::WriteAllText($propertiesFile, $pc, $utf8)
}
