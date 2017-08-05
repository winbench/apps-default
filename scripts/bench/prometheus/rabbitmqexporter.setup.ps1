$prometheusDir = App-Dir "Bench.Prometheus"
$homeDir = Get-ConfigValue "HomeDir"

$sourceFile = "$prometheusDir\prometheus.yml"
$targetFile = "$homeDir\prometheus.yml"

if (!(Test-Path $targetFile))
{
    cp $sourceFile $targetFile
}

$appId = "Bench.Prometheus.RabbitMqExporter"
$appDir = App-Dir $appId
$job = Get-AppConfigValue $appId "JobName"
$port = Get-AppConfigValue $appId "Port"

$job = @"

  - job_name: '${job}'
    static_configs:
      - targets: ['localhost:${port}']

"@

$utf8 = New-Object System.Text.UTF8Encoding($false)
$targetText = [IO.File]::ReadAllText($targetFile, $utf8)
if (!$targetText.Contains("localhost:${port}"))
{
    [IO.File]::AppendAllText($targetFile, $job, $utf8)
}

Safe-Dir "$appDir\bin"
if (Test-Path "$appDir\rabbitmq_exporter.exe")
{
    mv "$appDir\rabbitmq_exporter.exe" "$appDir\bin\rabbitmq_exporter.exe"
}

$includeQueues = Get-AppConfigValue $appId "IncludeQueues"
$skipQueues = Get-AppConfigValue $appId "SkipQueues"
$wrapper = @"
@ECHO OFF
SetLocal

SET PUBLISH_PORT=$port
SET INCLUDE_QUEUES=$includeQueues
SET SKIP_QUEUES=$skipQueues
"%~dp0bin\rabbitmq_exporter.exe" %*
"@

[IO.File]::WriteAllText("$appDir\rabbitmq_exporter.cmd", $wrapper)
