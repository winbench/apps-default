$appId = "Bench.Postman"
$dir = App-Dir $appId
$version = App-Version $appId
$7z = App-Exe "Bench.7z"

$nupkg = dir "$dir\Postman-*-full.nupkg" | select -First 1

if (Test-Path $nupkg) {
    pushd $dir
    & $7z x $nupkg "-ir!lib/net45"
    del .\* -Exclude lib
    move .\lib\net45\* .\
    del .\lib -Recurse
    popd
}
