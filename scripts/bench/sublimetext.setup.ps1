$sublimeTextDataDir = Get-AppConfigValue "Bench.SublimeText" "DataDir"

if (!(Test-Path $sublimeTextDataDir)) {
    $sublimeText3DataDir = $sublimeTextDataDir + " 3"
    if (Test-Path $sublimeText3DataDir) {
        Move-Item $sublimeText3DataDir $sublimeTextDataDir
    } else {
        mkdir $sublimeTextDataDir | Out-Null
    }
}

$sublimeTextDir = App-Dir "Bench.SublimeText"
$portableDataDir = "$sublimeTextDir\Data"

if (Test-Path $portableDataDir)
{
    del $portableDataDir -Recurse
}
