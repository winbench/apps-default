$pgPath = App-Path "Bench.PostgreSQL"

$dataDir = Get-AppConfigValue "Bench.PostgreSQL" "PostgreSqlDataDir"
$logFile = Get-AppConfigValue "Bench.PostgreSQL" "PostgreSqlLogFile"
if (!(Test-Path $dataDir -PathType Container)) {
    Write-Host "Initializing PostgreSQL database in $dataDir"
    pushd $pgPath
    $pwFile = App-SetupResource "Bench.PostgreSQL" "defaultpw.txt"
    .\initdb.exe "--pgdata=$dataDir" `
        "--encoding=UTF8" `
        "--username=postgres" "--pwfile=$pwFile" `
        | Out-File $logFile -Encoding OEM
    popd
    Write-Host "Login to PostgreSQL with user 'postgres' and password 'bench'."
    if ($LASTEXITCODE -ne 0) {
        throw "Error during initialization of the PostgreSQL data directory: Exit Code = $LASTEXITCODE."
    }
}
if (!(Test-Path "$pgPath\postgresql_start.cmd")) {
    $cmdFile = App-SetupResource "Bench.PostgreSQL" "postgresql_start.cmd"
    cp $cmdFile $pgPath
    Write-Host "Run 'postgresql_start' on the Bench shell to start the PostgreSQL server."
}
if (!(Test-Path "$pgPath\postgresql_stop.cmd")) {
    $cmdFile = App-SetupResource "Bench.PostgreSQL" "postgresql_stop.cmd"
    cp $cmdFile $pgPath
    Write-Host "Run 'postgresql_stop' on the Bench shell to stop a running PostgreSQL server."
}
if (!(Test-Path "$pgPath\postgresql_log.cmd")) {
    $cmdFile = App-SetupResource "Bench.PostgreSQL" "postgresql_log.cmd"
    cp $cmdFile $pgPath
    Write-Host "Run 'postgresql_log' to open the PostgreSQL log file in the system editor."
}
if (!(Test-Path "$pgPath\postgresql_server.cmd")) {
    $cmdFile = App-SetupResource "Bench.PostgreSQL" "postgresql_server.cmd"
    cp $cmdFile $pgPath
    Write-Host "Run 'postgresql_server' to run the PostgreSQL server."
}
