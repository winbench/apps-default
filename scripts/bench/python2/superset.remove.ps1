$pythonAppId = "Bench.Python2"
$pythonDir = App-Dir $pythonAppId
$packageDir = "$pythonDir\lib\site-packages\superset"
$pip = "$pythonDir\Scripts\pip.exe"
$supersetAppId = "${pythonAppId}.Superset"
$supersetWrapper = App-Exe $supersetAppId

if (!(Test-Path $pythonDir))
{
    return
}
if (!(Test-Path $pip))
{
    Write-Error "PIP for Python 2 not found."
    return
}

& $pip uninstall -y superset

if (Test-Path $packageDir)
{
    Purge-Dir $packageDir
}
if (Test-Path $supersetWrapper)
{
    Remove-Item $supersetWrapper
}
