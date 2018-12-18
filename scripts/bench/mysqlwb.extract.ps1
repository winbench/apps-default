param ($archive, $targetDir)

$mainVersion = Get-AppConfigValue "Bench.MySQLWB" "MainVersion"
$subVersion = Get-AppConfigValue "Bench.MySQLWB" "SubVersion"
$LessMsi = App-Exe "Bench.LessMsi"

$component = "mysql-workbench-community-${subVersion}-winx64.msi"

& $LessMsi x "$archive" "$targetDir\" | Out-Null
move "$targetDir\SourceDir\MySQL\MySQL Installer for Windows\Product Cache\$component" "$targetDir\"
Purge-Dir "$targetDir\SourceDir"

& $LessMsi x "$targetDir\$component" "$targetDir\" | Out-Null
del "$targetDir\$component"
move "$targetDir\SourceDir\MySQL\MySQL Workbench ${mainVersion} CE\*" "$targetDir\"
Purge-Dir "$targetDir\SourceDir"
