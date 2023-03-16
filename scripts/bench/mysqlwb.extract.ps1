param ($archive, $targetDir)

$mainVersion = Get-AppConfigValue "Bench.MySQLWB" "MainVersion"
$LessMsi = App-Exe "Bench.LessMsi"

& $LessMsi x "$archive" "$targetDir\" | Out-Null
move "$targetDir\SourceDir\MySQL\MySQL Workbench ${mainVersion} CE\*" "$targetDir\"
Purge-Dir "$targetDir\SourceDir"
