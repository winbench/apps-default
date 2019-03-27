$appDir = App-Dir "Bench.CyberChef"
"@START `"CyberChef`" /D `"%~dp0`" cyberchef.htm" | Out-File "$appDir\cyberchef.cmd" -Encoding Default
copy (App-SetupResource "Bench.CyberChef" "cyberchef.ico") $appDir
