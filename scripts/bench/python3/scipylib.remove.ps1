$pythonDir = App-Dir "Bench.Python3"
$pip = App-Exe "Bench.Python3.Pip"

if (!(Test-Path $pythonDir))
{
    return
}
if (!(Test-Path $pip))
{
    Write-Error "PIP 3 not found."
    return
}

pip uninstall -y scipy