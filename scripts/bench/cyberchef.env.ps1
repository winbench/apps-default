$appId = "Bench.CyberChef"
$appDir = App-Dir $appId
$appExe = App-Exe $appId
"@START `"CyberChef`" /D `"%~dp0`" `"$appExe`"" `
    | Out-File "$appDir\cyberchef.cmd" -Encoding Default
