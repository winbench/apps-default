$pythonDir = App-Dir "Bench.Python3"
$pip = "$pythonDir\Scripts\pip.exe"

if (!(Test-Path $pythonDir))
{
    return
}
if (!(Test-Path $pip))
{
    Write-Error "PIP for Python 3 not found."
    return
}

& $pip uninstall -y python_geohash
