$mingwDir = App-Dir "Bench.MinGwGet"
$mingwGet = App-Exe "Bench.MinGwGet"

if (!(Test-Path "$mingwDir\var\cache"))
{
    pushd $mingwDir
    Write-Host "Updating MinGW catalog ..."
    & $mingwGet update
    popd
}
