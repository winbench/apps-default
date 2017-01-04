$mingwGet = App-Exe "Bench.MinGwGet"

$mingwPackages = Get-AppConfigListValue "Bench.MinGW" "Packages"

$ErrorActionPreference = "SilentlyContinue"
foreach ($p in $mingwPackages)
{
    Write-Host "Setting up MinGW package $p ..."
    & $mingwGet install $p
}
