$erlangDir = App-Dir "Bench.Erlang"
$binDir = "$erlangDir\bin"
$ertsVersion = Get-AppConfigValue "Bench.Erlang" "ErtsVersion"
$ertsDir = "$erlangDir\erts-${ertsVersion}"

$bindirPath = $binDir.TrimEnd("\").Replace("\", "\\")
$rootdirPath = $erlangDir.TrimEnd("\").Replace("\", "\\")

$iniText = @("[erlang]")
$iniText += "Bindir=${bindirPath}"
$iniText += "Progname=erl"
$iniText += "Rootdir=${rootdirPath}"

$iniText | Out-File "$binDir\erl.ini" -Encoding Default -Force
