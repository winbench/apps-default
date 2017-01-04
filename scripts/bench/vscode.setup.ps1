$settingsSourceDir = App-SetupResource "Bench.VSCode" "settings"
$snippetSourceDir = App-SetupResource "Bench.VSCode" "snippets"
$codeAppData = Safe-Dir "$(Get-ConfigValue "AppDataDir")\Code\User"
$snippetTargetDir = Safe-Dir "$codeAppData\snippets"

foreach ($f in (Get-ChildItem "$settingsSourceDir\*.json")) {
    if (!(Test-Path "$codeAppData\$($f.Name)")) {
        cp $f "$codeAppData\"
    }
}
foreach ($f in (Get-ChildItem "$snippetSourceDir\*.json")) {
    if (!(Test-Path "$snippetTargetDir\$($f.Name)")) {
        cp $f "$snippetTargetDir\"
    }
}
