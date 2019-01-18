$pythonDir = App-Dir "Bench.Python3"
$pip = "$pythonDir\Scripts\pip3.exe"

if (!(Test-Path $pythonDir))
{
    return
}
if (!(Test-Path $pip))
{
    Write-Error "PIP for Python 3 not found."
    return
}

& $pip uninstall -y jupyter

if (Test-Path "$pythonDir\Scripts\jupyter.exe") {
    del "$pythonDir\Scripts\jupyter.exe"
    del "$pythonDir\Scripts\jupyter-*.exe"
}
