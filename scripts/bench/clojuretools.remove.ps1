$appId = "Bench.ClojureTools"
$windowsPowerShellDir = App-Dir $appId
$powerShellDir = "$(Get-ConfigValue "HomeDir")\Documents\PowerShell\Modules\ClojureTools"

Purge-Dir $powerShellDir
Purge-Dir $windowsPowerShellDir
