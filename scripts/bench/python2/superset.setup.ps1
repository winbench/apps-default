$pythonAppId = "Bench.Python2"
$pythonDir = App-Dir $pythonAppId
$python = App-Exe $pythonAppId
$supersetAppId = "${pythonAppId}.Superset"
$configRes = App-SetupResource $supersetAppId "superset_config.py"
$fabmanager = "$pythonDir\Scripts\fabmanager.exe"

$wrapperFile = "$(App-Dir $pythonAppId)\Scripts\superset.cmd"
$homeDir = Get-ConfigValue "HomeDir"
$supersetConfigDir = "$homeDir\.superset"
$supersetConfigFile = "$supersetConfigDir\superset_config.py"
$supersetDb = "$supersetConfigDir\superset.db"

if (!(Test-Path $wrapperFile))
{
    "@python2 -c `"from superset.cli import manager; manager.run()`" %*" | Out-File $wrapperFile -Encoding Default
}

function randomString ()
{
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122
    $chars = $punc + $digits + $letters
    Get-Random -Count 30 -Input $chars `
        | % -Begin { $s = $null } `
            -Process { $s += [char]$_ } `
            -End { $s }
}

if (!(Test-Path $supersetConfigDir))
{
    mkdir $supersetConfigDir | Out-Null
}
if (!(Test-Path $supersetConfigFile))
{
    $secret = randomString
    $mapBoxApiKey = Get-AppConfigValue $supersetAppId "MapBoxApiKey"
    $rowLimit = Get-AppConfigValue $supersetAppId "DefaultRowLimit"
    Get-Content $configRes `
        | % { $_.Replace("[SECRETKEY]", $secret) } `
        | % { $_.Replace("[MAPBOXAPIKEY]", $mapBoxApiKey) } `
        | % { $_.Replace("[ROWLIMIT]", $rowLimit) } `
        | Out-File $supersetConfigFile -Encoding Default
}
if (!(Test-Path $supersetDb))
{
    $userName = Get-AppConfigValue $supersetAppId "AdminUser"
    $userPasswd = Get-AppConfigValue $supersetAppId "AdminPassword"
    $userEmail = Get-ConfigValue "UserEmail"
    & $fabmanager create-admin --app superset `
        --username $userName --password $userPasswd `
        --firstname "Super" --lastname "User" --email $userEmail
    & $wrapperFile "db" "upgrade"
    if (Get-AppConfigBooleanValue $supersetAppId "LoadExamples")
    {
        & $wrapperFile "load_examples"
    }
    & $wrapperFile "init"
}
else
{
    & $wrapperFile "db" "upgrade"
}
