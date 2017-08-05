$prometheusDir = App-Dir "Bench.Prometheus"
$homeDir = Get-ConfigValue "HomeDir"

$sourceFile = "$prometheusDir\prometheus.yml"
$targetFile = "$homeDir\prometheus.yml"

if (!(Test-Path $targetFile))
{
    cp $sourceFile $targetFile
}

$appId = "Bench.Prometheus.GrokExporter"
$appDir = App-Dir $appId
$job = Get-AppConfigValue $appId "JobName"
$port = Get-AppConfigValue $appId "Port"
$configFile = Get-AppConfigValue $appId "ConfigFile"

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

if (!(Test-Path $configFile)) 
{
$configText = @"
global:
    config_version: 2
server:
    host: localhost
    port: $port
grok:
    patterns_dir: ./patterns
    additional_patterns:
    - 'EXIM_MESSAGE [a-zA-Z ]*'
input:
    type: file
    path: ./example/exim-rejected-RCPT-examples.log
    readall: true # Read from the beginning of the file? False means we start at the end of the file and read only new lines.
metrics:
    - type: counter
      name: exim_rejected_rcpt_total
      help: Total number of rejected recipients, partitioned by error message.
      match: '%{EXIM_DATE} %{EXIM_REMOTE_HOST} F=<%{EMAILADDRESS}> rejected RCPT <%{EMAILADDRESS}>: %{EXIM_MESSAGE:message}'
      labels:
          error_message: '{{.message}}'

"@
    [IO.File]::WriteAllText($configFile, $configText, $utf8)
}
