$soxDir = App-Dir "Bench.SoX"

$cmdDir = Safe-Dir "$soxDir\cmd"
"@`"%~dp0..\sox.exe`" %*" | Out-File "$cmdDir\sox.cmd" -Encoding Default
