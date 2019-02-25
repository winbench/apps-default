$appPath = App-Path Bench.Ghostscript

if (Test-Path "$appPath\gswin64.exe") {
    copy "$appPath\gswin64.exe" "$appPath\gswin32.exe" -Force
}
if (Test-Path "$appPath\gswin64c.exe") {
    copy "$appPath\gswin64c.exe" "$appPath\gswin32c.exe" -Force
}
