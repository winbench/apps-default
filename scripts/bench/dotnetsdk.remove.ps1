$appId = "Bench.DotNetSdk"
$appDir = App-Dir $appId
Purge-Dir $appDir
$homeDir = Get-ConfigValue "HomeDir"
Purge-Dir "$homeDir\.dotnet"
