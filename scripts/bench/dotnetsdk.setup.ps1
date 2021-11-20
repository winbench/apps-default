$appId = "Bench.DotNetSdk"
$dotnet = App-Exe $appId

$tools = Get-AppConfigListValue $appId "Tools"

[string]$list = & $dotnet tool list --global
foreach ($tool in $tools) {
    if ($list -like "*$tool*") {
        Write-Host "Updating .NET CLI Tool ${tool}..."
        & $dotnet tool update --global $tool
    } else {
        Write-Host "Installing .NET CLI Tool ${tool}..."
        & $dotnet tool install --global $tool
    }
}
