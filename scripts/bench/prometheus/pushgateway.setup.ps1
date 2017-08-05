$prometheusDir = App-Dir "Bench.Prometheus"
$homeDir = Get-ConfigValue "HomeDir"

$sourceFile = "$prometheusDir\prometheus.yml"
$targetFile = "$homeDir\prometheus.yml"

if (!(Test-Path $targetFile))
{
    cp $sourceFile $targetFile
}

$appId = "Bench.Prometheus.PushGateway"
$appDir = App-Dir $appId
$job = Get-AppConfigValue $appId "JobName"
$port = Get-AppConfigValue $appId "Port"

$job = @"

  - job_name: '${job}'
    honor_labels: true
    static_configs:
      - targets: ['localhost:${port}']

"@

$utf8 = New-Object System.Text.UTF8Encoding($false)
$targetText = [IO.File]::ReadAllText($targetFile, $utf8)
if (!$targetText.Contains("localhost:${port}"))
{
    [IO.File]::AppendAllText($targetFile, $job, $utf8)
}
