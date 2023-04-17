$appId = "Bench.VSCode"
$settingsSourceDir = App-SetupResource $appId "settings"
$snippetSourceDir = App-SetupResource $appId "snippets"
$codeAppData = Safe-Dir "$(Get-ConfigValue "AppDataDir")\Code\User"
$snippetTargetDir = Safe-Dir "$codeAppData\snippets"

Write-Output "Copying settings from $settingsSourceDir ..."

foreach ($f in (Get-ChildItem "$settingsSourceDir\*.json")) {
    if (!(Test-Path "$codeAppData\$($f.Name)")) {
        Copy-Item $f "$codeAppData\"
    }
}

Write-Output "Copying snippets from $snippetSourceDir ..."

foreach ($f in (Get-ChildItem "$snippetSourceDir\*.json")) {
    if (!(Test-Path "$snippetTargetDir\$($f.Name)")) {
        Copy-Item $f "$snippetTargetDir\"
    }
}

$code = App-Exe $appId
$extensions = Get-AppConfigListValue $appId "Extensions"
foreach ($ext in $extensions) {
    try {
        & $code --install-extension $ext
    } catch {
        Write-Warning "Installing VS Code extension $ext failed"
        Write-Output $_
    }
}
