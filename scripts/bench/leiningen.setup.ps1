$lein = App-Exe "Bench.Leiningen"
$leinProfilesTemplate = App-SetupResource "Bench.Leiningen" "profiles.clj"
$leinProfilesDir = "$(Get-ConfigValue HomeDir)\.lein"
$leinProfiles = [IO.Path]::Combine($leinProfilesDir, "profiles.clj")

$leinEnv = Get-AppConfigValue "Bench.Leiningen" "Environment"
$leinJar = $leinEnv["LEIN_JAR"]

if (!(Test-Path $leinJar))
{
    $curlPath = App-Path "Bench.cURL"
    $env:PATH = "$curlPath;${env:PATH}"

    $env:HTTP_CLIENT = "curl -f -L -o"

    $env:LEIN_JAR = $leinJar
    Write-Host "Installing Leiningen to: $leinJar"
    & $lein self-install
}

if (!(Test-Path $leinProfilesDir))
{
    $_ = mkdir $leinProfilesDir
}
if (!(Test-Path $leinProfiles))
{
    copy $leinProfilesTemplate $leinProfiles
}
