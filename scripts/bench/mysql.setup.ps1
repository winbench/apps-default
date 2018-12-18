$mysqlDir = App-Dir "Bench.MySQL"
$mysqlPath = App-Path "Bench.MySQL"
$homeDir = Get-ConfigValue "HomeDir"
$dataDir = Get-AppConfigValue "Bench.MySQL" "MySqlDataDir"
$optionFile = Get-AppConfigValue "Bench.MySQL" "MySqlServerOptionFile"
$defaultOptionFile = "$homeDir\mysqld.cnf"
$optionResFile = App-SetupResource "Bench.MySQL" "mysqld.cnf"

if (!(Test-Path $dataDir -PathType Container)) {
    $_ = mkdir $dataDir
    $initFile = App-SetupResource "Bench.MySQL" "init.sql"
    & "$mysqlPath\mysqld.exe" `
        "--defaults-extra-file=$optionFile" `
        "--basedir=$mysqlDir" `
        "--datadir=$dataDir" `
        "--initialize" `
        "--init-file=$initFile"
}

if (!(Test-Path "$mysqlPath\mysql_start.cmd")) {
    $cmdScript = App-SetupResource "Bench.MySQL" "mysql_start.cmd"
    cp $cmdScript $mysqlPath
    Write-Host "Run 'mysql_start' on the Bench shell to start the MySQL server."
}
if (!(Test-Path "$mysqlPath\mysql_stop.cmd")) {
    $cmdScript = App-SetupResource "Bench.MySQL" "mysql_stop.cmd"
    cp $cmdScript $mysqlPath
    Write-Host "Run 'mysql_stop' on the Bench shell to stop a running MySQL server."
}
if (!(Test-Path "$mysqlPath\mysql_server.cmd")) {
    $cmdScript = App-SetupResource "Bench.MySQL" "mysql_server.cmd"
    cp $cmdScript $mysqlPath
}
if (!(Test-Path "$mysqlPath\mysql_log.cmd")) {
    $cmdScript = App-SetupResource "Bench.MySQL" "mysql_log.cmd"
    cp $cmdScript $mysqlPath
    Write-Host "Run 'mysql_log' to open the MySQL log file in the system editor."
}

if (!(Test-Path $defaultOptionFile)) {
    cp $optionResFile $defaultOptionFile
}

if (!(Test-Path "${homeDir}\.my.cnf"))
{
@"
[client]
user=root
password=bench
"@ | Out-File "${homeDir}\.my.cnf" -Encoding Default
}
