$appId = "Bench.Bun"
$appDir = App-Dir $appId

Copy-Item "$appDir\bun.exe" "$appDir\bunx.exe" -Force
