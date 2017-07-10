$nppDir = App-Dir "Bench.NotepadPlusPlus"
$configDir = Get-AppConfigValue "Bench.NotepadPlusPlus" "ConfigurationDir"
if (!(Test-Path "$nppDir\cloud")) { mkdir "$nppDir\cloud" | Out-Null }

[IO.File]::WriteAllText("$nppDir\cloud\choice", $configDir)
