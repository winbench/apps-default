$sublimeMergeDataDir = Get-AppConfigValue "Bench.SublimeMerge" "DataDir"

if (!(Test-Path $sublimeMergeDataDir)) {
    mkdir $sublimeMergeDataDir | Out-Null
}

$sublimeMergeDir = App-Dir "Bench.SublimeMerge"
$portableDataDir = "$sublimeMergeDir\Data"

if (Test-Path $portableDataDir)
{
    del $portableDataDir -Recurse
}
