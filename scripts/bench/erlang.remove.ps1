$erlangDir = App-Dir "Bench.Erlang"
$erlangPath = App-Path "Bench.Erlang"

& "$erlangPath\epmd.exe" -kill

Purge-Dir $erlangDir
