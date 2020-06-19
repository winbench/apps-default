$appId = "Bench.DotNetCore"
$dotnet = App-Exe $appId

$tools = Get-AppConfigListValue $appId "Tools"

foreach ($tool in $tools) {
    Write-Host "Installing .NET Core Tool ${tool}..."
    & $dotnet tool install $tool --global
}
