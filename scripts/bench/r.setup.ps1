$rDir = App-Dir "Bench.R"

$binDir = "$rDir\bin"

if (Test-Path "$binDir\R,1.exe")
{
    move "$binDir\R,1.exe" "$binDir\R.exe"
}
if (Test-Path "$binDir\R,2.exe")
{
    del "$binDir\R,2.exe"
}
