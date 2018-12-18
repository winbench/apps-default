$mariadbDir = App-Dir "Bench.MariaDB"
$mariadbPath = App-Path "Bench.MariaDB"
$homeDir = Get-ConfigValue "HomeDir"
$dataDir = Get-AppConfigValue "Bench.MariaDB" "MariaDbDataDir"
$optionFile = Get-AppConfigValue "Bench.MariaDB" "MariaDbServerOptionFile"
$defaultOptionFile = "$homeDir\mariadb.cnf"
$optionResFile = App-SetupResource "Bench.MariaDB" "mariadb.cnf"

if (Test-Path "$mariadbPath\mysqld.pdb") {
    del "$mariadbPath\mysqld.pdb"
}

if (!(Test-Path $defaultOptionFile)) {
    cp $optionResFile $defaultOptionFile
}

if (!(Test-Path $dataDir -PathType Container)) {
    $_ = mkdir $dataDir
    Write-Host "Initializing MariaDB data directory..."
    & "$mariadbPath\mysql_install_db.exe" "--datadir=$dataDir"

    Write-Host ""
    Write-Host "Running SQL script for initialization..."
    $initFile = App-SetupResource "Bench.MariaDB" "init.sql"
    $serverProc = Start-Process "$mariadbPath\mysqld.exe" -PassThru -NoNewWindow -ArgumentList @(
        "--defaults-extra-file=`"$optionFile`"",
        "--basedir=`"$mariadbDir`"",
        "--datadir=`"$dataDir`"",
        "--init-file=`"$initFile`"")

    $testLimit = 30
    $testCnt = 0
    Write-Host "Waiting for MariaDB server..."
    do {
        & "$mariadbPath\mysqladmin.exe" --silent ping | Out-Null
        $testCnt += 1
        [Threading.Thread]::Sleep(1)
    } while (!$? -and $testCnt -le $testLimit)
    if ($testCnt -eq $testLimit) {
        Write-Host "TIMEOUT"
        Write-Warning "MariaDB server not responding. Database initialization may have failed."
    } else {
        Write-Host "OK"
        & "$mariadbPath\mysqladmin.exe" --user=root --password=bench shutdown
        $_ = $serverProc.WaitForExit(10000)
    }
}

if (!(Test-Path "$mariadbPath\mariadb_start.cmd")) {
    $cmdScript = App-SetupResource "Bench.MariaDB" "mariadb_start.cmd"
    cp $cmdScript $mariadbPath
    Write-Host "Run 'mariadb_start' on the Bench shell to start the MariaDB server."
}
if (!(Test-Path "$mariadbPath\mariadb_stop.cmd")) {
    $cmdScript = App-SetupResource "Bench.MariaDB" "mariadb_stop.cmd"
    cp $cmdScript $mariadbPath
    Write-Host "Run 'mariadb_stop' on the Bench shell to stop a running MariaDB server."
}
if (!(Test-Path "$mariadbPath\mariadb_server.cmd")) {
    $cmdScript = App-SetupResource "Bench.MariaDB" "mariadb_server.cmd"
    cp $cmdScript $mariadbPath
}
if (!(Test-Path "$mariadbPath\mariadb_log.cmd")) {
    $cmdScript = App-SetupResource "Bench.MariaDB" "mariadb_log.cmd"
    cp $cmdScript $mariadbPath
    Write-Host "Run 'mariadb_log' to open the MariaDB log file in the system editor."
}

if (!(Test-Path "${homeDir}\.my.cnf"))
{
@"
[client]
user=root
password=bench
"@ | Out-File "${homeDir}\.my.cnf" -Encoding Default
}
