$homeDir = Get-ConfigValue "HomeDir"
$appId = "Bench.Grafana"
$appDir = App-Dir $appId
$confDir = "$appDir\conf"
$confFile = "$confDir\custom.ini"

$dataDir = Get-AppConfigValue $appId "DataDir"

Safe-Dir "$dataDir\data"
Safe-Dir "$dataDir\log"
Safe-Dir "$dataDir\plugins"
Safe-Dir "$dataDir\dashboards"

$confText = @"
instance_name = Bench

[paths]
data = `"$dataDir\data`"
logs = `"$dataDir\log`"
plugins = `"$dataDir\plugins`"

[dashboards.json]
path = `"$dataDir\dashboards`"
"@

[IO.File]::WriteAllText($confFile, $confText)
