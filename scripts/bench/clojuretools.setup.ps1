$appId = "Bench.ClojureTools"
$windowsPowerShellDir = App-Dir $appId
$powerShellDir = Safe-Dir "$(Get-ConfigValue "HomeDir")\Documents\PowerShell\Modules\ClojureTools"

robocopy $windowsPowerShellDir $powerShellDir /MIR /NJH /NJS /NP /NFL /NDL
