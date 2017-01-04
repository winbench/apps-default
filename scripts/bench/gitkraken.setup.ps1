$configDir = [IO.Path]::Combine((Get-ConfigValue "AppDataDir"), ".gitkraken")
$configFile = [IO.Path]::Combine($configDir, "config")
$templateFile = App-SetupResource "Bench.GitKraken" "config"

if (!(Test-Path $configDir))
{
    $_ = mkdir $configDir
}
if (!(Test-Path $configFile))
{
    copy $templateFile $configFile
}
