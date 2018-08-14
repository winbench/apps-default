$java8 = App-Exe "Bench.JRE8"
$embulkDir = App-Dir "Bench.Embulk"

"@`"$java8`" -XX:+AggressiveOpts -XX:+UseConcMarkSweepGC -Xverify:none -jar `"%~dp0\embulk-latest.jar`" %*" | Out-File "$embulkDir\embulk.cmd" -Encoding Default
