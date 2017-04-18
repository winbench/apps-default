$lein = App-Exe "Bench.Leiningen"
$leinProfilesTemplate = App-SetupResource "Bench.Leiningen" "profiles.clj"
$leinProfilesDir = "$(Get-ConfigValue HomeDir)\.lein"
$leinProfiles = [IO.Path]::Combine($leinProfilesDir, "profiles.clj")

$leinEnv = Get-AppConfigValue "Bench.Leiningen" "Environment"
$leinJar = $leinEnv["LEIN_JAR"]

if (!(Test-Path $leinJar))
{
    $wgetPath = App-Path "Bench.Wget"
    $env:PATH = "$wgetPath;${env:PATH}"

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
