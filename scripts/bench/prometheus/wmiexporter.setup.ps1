$prometheusDir = App-Dir "Bench.Prometheus"
$homeDir = Get-ConfigValue "HomeDir"

$sourceFile = "$prometheusDir\prometheus.yml"
$targetFile = "$homeDir\prometheus.yml"

if (!(Test-Path $targetFile))
{
    cp $sourceFile $targetFile
}

$job = @"

  - job_name: 'wmi'
    static_configs:
      - targets: ['localhost:9182']

"@

$utf8 = New-Object System.Text.UTF8Encoding($false)
$targetText = [IO.File]::ReadAllText($targetFile, $utf8)
if (!$targetText.Contains('localhost:9182'))
{
    [IO.File]::AppendAllText($targetFile, $job, $utf8)
}
