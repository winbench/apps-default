param ($archive, $targetDir)

$appVersion = App-Version "Bench.Boostnote"

$7z = App-Exe "Bench.7z"

& $7z x "-o$targetDir\squirrel" $archive
& $7z x "-o$targetDir\nupkg" "$targetDir\squirrel\boost-${appVersion}-full.nupkg" "lib/net45/"
Purge-Dir "$targetDir\squirrel"
move "$targetDir\nupkg\lib\net45\*" $targetDir
Purge-Dir "$targetDir\nupkg"
