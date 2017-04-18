$targetDir = App-Dir "Bench.Hugo"
$hugoVersion = App-Version "Bench.Hugo"

if (Get-ConfigValue "Use64Bit")
{
    $originalExe = "hugo_${hugoVersion}_windows_amd64.exe"
}
else
{
    $originalExe = "hugo_${hugoVersion}_windows_386.exe"
}

if (Test-Path "$targetDir\$originalExe")
{
    move "$targetDir\$originalExe" "$targetDir\hugo.exe"
}
