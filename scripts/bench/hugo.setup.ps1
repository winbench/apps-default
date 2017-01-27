$targetDir = App-Dir "Bench.Hugo"
$hugoVersion = App-Version "Bench.Hugo"

$originalExe = "hugo_${hugoVersion}_windows_386.exe"

if (Test-Path "$targetDir\$originalExe")
{
    move "$targetDir\$originalExe" "$targetDir\hugo.exe"
}
