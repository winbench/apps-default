$appID = "Bench.Vagrant"
$appDir = App-Dir $appID
$appVersion = App-Version $appID

$vagrantScriptFile = Resolve-Path "$appDir\embedded\gems\$appVersion\gems\vagrant-$appVersion\bin\vagrant"

$utf8 = New-Object System.Text.UTF8Encoding (,$false)
$vagrantScript = [System.IO.File]::ReadAllText($vagrantScriptFile, $utf8)
$lines = [System.Collections.ArrayList]$vagrantScript.Split("`n")
$lines.Insert(1, "Encoding.default_external = Encoding.find('Windows-1251')")
$lines.Insert(1, "Encoding.default_internal = Encoding.find('Windows-1251')")

$vagrantScript = [string]::Join("`n", [string[]]$lines)
[System.IO.File]::WriteAllText($vagrantScriptFile, $vagrantScript, $utf8)
