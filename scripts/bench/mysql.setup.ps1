$mysqlDir = App-Dir "Bench.MySQL"
$mysqlPath = App-Path "Bench.MySQL"
$homeDir = Get-ConfigValue "HomeDir"
$dataDir = Get-AppConfigValue "Bench.MySQL" "MySqlDataDir"

if (!(Test-Path $dataDir -PathType Container)) {
    $_ = mkdir $dataDir
    $logFile = "$dataDir\$env:COMPUTERNAME.err"
    if (Test-Path $logFile) {
        del $logFile
    }
    $initFile = App-SetupResource "Bench.MySQL" "init.sql"
    & "$mysqlPath\mysqld.exe" --initialize --init-file $initFile --log_syslog=0 "--basedir=$mysqlDir" "--datadir=$dataDir"
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

if (!(Test-Path "${homeDir}\.my.cnf"))
{
@"
[client]
user=root
password=bench
"@ | Out-File "${homeDir}\.my.cnf" -Encoding Default
}
