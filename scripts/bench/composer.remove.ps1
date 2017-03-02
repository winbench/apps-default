$composerDir = App-Dir "Bench.Composer"
if (Test-Path $composerDir) { del $composerDir -Recurse -Force }
