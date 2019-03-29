$pythonDir = App-Dir "Bench.Python2"
$pip = "$pythonDir\Scripts\pip2.exe"

if (!(Test-Path $pythonDir))
{
    return
}
if (!(Test-Path $pip))
{
    Write-Error "PIP for Python 2 not found."
    return
}

& $pip uninstall -y jupyter

if (Test-Path "$pythonDir\Scripts\jupyter.exe") {
    del "$pythonDir\Scripts\jupyter.exe"
    del "$pythonDir\Scripts\jupyter-*.exe"
}
