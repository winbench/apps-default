$homeDir = Get-ConfigValue "HomeDir"
Purge-Dir "$homeDir\.cargo\bin"
Purge-Dir "$homeDir\.cargo\registry"
Remove-Item "$homeDir\.cargo\.package-cache"
Purge-Dir "$homeDir\.rustup"