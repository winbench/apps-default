$targetDir = App-Dir "Bench.Hugo"
$hugoVersion = App-Version "Bench.Hugo"

if (Get-ConfigBooleanValue "Use64Bit")
{
    $originalExe = "hugo_${hugoVersion}_windows_amd64.exe"
}
else
{
    $originalExe = "hugo_${hugoVersion}_windows_386.exe"
}

if (Test-Path "$targetDir\$originalExe")
{
    Write-Host "Found $originalExe, renaming it to hugo.exe"
    move "$targetDir\$originalExe" "$targetDir\hugo.exe"
}
