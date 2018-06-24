$configDir = [IO.Path]::Combine((Get-ConfigValue "AppDataDir"), ".gitkraken")
$profilesDir = [IO.Path]::Combine($configDir, "profiles")

if (!(Test-Path $configDir)) { mkdir $configDir | Out-Null }
if (!(Test-Path $profilesDir)) { mkdir $profilesDir | Out-Null }

$configFile = [IO.Path]::Combine($configDir, "config")
$templateFile = App-SetupResource "Bench.GitKraken" "config"
if (!(Test-Path $configFile)) { copy $templateFile $configFile }
