$appsDir = Get-ConfigValue "AppsInstallDir"

$ideaCommunityDir = "$appsDir\bench\idea_community"

if (Test-Path $ideaCommunityDir) {
	Purge-Dir $ideaCommunityDir
}
