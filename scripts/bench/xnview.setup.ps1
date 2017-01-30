$appDataDir = Get-ConfigValue "AppDataDir"

$xnviewSettingsDir = "$appDataDir\XnView"
$xnviewSettingsFile = "$xnviewSettingsDir\XnView.ini"

if (!(Test-Path $xnviewSettingsDir))
{
	$_ = mkdir $xnviewSettingsDir
}
if (!(Test-Path $xnviewSettingsFile))
{
	$h = [IO.File]::Create($xnviewSettingsFile)
	$h.Close()
}
