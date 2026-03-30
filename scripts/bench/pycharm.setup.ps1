$appsDir = Get-ConfigValue "AppsInstallDir"

$pycharmCommunityDir = "$appsDir\bench\pycharm_community"

if (Test-Path $pycharmCommunityDir) {
	Purge-Dir $pycharmCommunityDir
}
