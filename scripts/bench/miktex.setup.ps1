$mpm = "$(App-Path "Bench.MiKTeX")\mpm.exe"
if (!(Test-Path $mpm)) {
    throw "MiKTeX Package Manager not found"
}

$packages = Get-AppConfigListValue "Bench.MiKTeX" "DefaultPackages"

function Extract-InstalledPackageNames()
{
    begin
    {
        [regex]$ex = "\S+$"
    }
    process
    {
        if ($_.StartsWith("i "))
        {
            $m = $ex.Match($_)
            if ($m.Success)
            {
                return $m.Value
            }
        }
    }
}

Write-Host "Installing missing LaTeX packages..."

$installed = & $mpm --list | Extract-InstalledPackageNames

foreach ($package in $packages)
{
    if (!($installed -contains $package))
    {
        Write-Host "... Package `"$package`" ..."
        & $mpm "--install=$package"
        $installed = & $mpm --list | Extract-InstalledPackageNames
    }
    else
    {
        Write-Host "... Package `"$package`" already installed."
    }
}
