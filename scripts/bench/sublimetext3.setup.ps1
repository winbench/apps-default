$sublimeTextDataDir = Get-AppConfigValue "Bench.SublimeText3" "DataDir"

if (!(Test-Path $sublimeTextDataDir)) {
    $_ = mkdir $sublimeTextDataDir
}

$sublimeText3Dir = App-Dir "Bench.SublimeText3"
$portableDataDir = "$sublimeText3Dir\Data"

if (Test-Path $portableDataDir)
{
    del $portableDataDir -Recurse
}
