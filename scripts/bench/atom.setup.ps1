$atomCliPath = App-Path "Bench.Atom"
$apm = "$atomCliPath\apm.cmd"

if (!(Test-Path $apm))
{
    Write-Error "Could not find the atom-package-manager."
    return
}

$defaultPackages = Get-AppConfigListValue "Bench.Atom" "DefaultPackages"

foreach ($p in $defaultPackages)
{
    & $apm install $p
}
