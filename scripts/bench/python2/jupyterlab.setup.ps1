$pythonAppId = "Bench.Python2"
$pythonDir = App-Dir $pythonAppId
$python = App-Exe $pythonAppId

& $python -m pip install jupyterlab

[string[]]$extensions = Get-AppConfigListValue "${pythonAppId}.JupyterLab" "Extensions"

if ($extensions) {
    foreach ($extension in $extensions) {
        & "$pythonDir\Scripts\jupyter.exe" labextension install --no-build $extension
    }
    & "$pythonDir\Scripts\jupyter.exe" lab build
}
