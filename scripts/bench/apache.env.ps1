$httpdDir = App-Dir "Bench.Apache"

$confDir = Resolve-Path "$httpdDir\conf"
$confFile = "$confDir\httpd.conf"
$confBackupFile = [IO.Path]::ChangeExtension($confFile, ".conf.bak")

# Load configuration value

$userConfigFile = Get-AppConfigValue "Bench.Apache" "UserConfigFile"
$wwwDir = Safe-Dir (Get-AppConfigValue "Bench.Apache" "HttpdDocumentRoot")
Debug "DocumentRoot = '$wwwDir'"
$wwwListen = Get-AppConfigValue "Bench.Apache" "HttpdListen"
Debug "Listen = '$wwwListen'"

# Replay backup if no configuration found

if ((Test-Path $confBackupFile) -and !(Test-Path $confFile)) {
    cp $confBackupFile $confFile
}

# Make backup of configuration

if (!(Test-Path $confBackupFile)) {
    cp $confFile $confBackupFile
}

# Helper functions

function ApacheConformPath([string]$p) {
    return $p.Replace('\', '/')
}

function regex([string]$pattern, [Text.RegularExpressions.RegexOptions]$options) {
    return New-Object System.Text.RegularExpressions.Regex ($pattern, $options)
}

function Clean-Whitespace([string]$txt) {
    return ([regex]'(\r?\n){2,}').Replace($txt, '$1$1')
}

function Remove-PatternLine([string]$txt, [string]$pattern) {
    [regex]$r = regex $pattern Multiline
    return $r.Replace($txt, '')
}

function Asure-PatternLine([string]$txt, [string]$pattern, [string]$replacement) {
    $txt = Remove-PatternLine $txt $pattern
    $txt = Clean-Whitespace $txt
    $txt = $txt.TrimEnd() + "`n" + $replacement
    return $txt
}

# Load configuration

$txt = [IO.File]::ReadAllText($confFile, [Text.Encoding]::UTF8)

# Modify configuration

$serverRootP = regex '^ServerRoot\s+"(.*?)"' Multiline

$txt = $serverRootP.Replace($txt, "ServerRoot `"$(ApacheConformPath $httpdDir)`"")

$docRootP = regex '^DocumentRoot\s+"(?<path>.*?)"' Multiline

$docRootM = $docRootP.Match($txt)
if ($docRootM.Success) {
    $txt = $docRootP.Replace($txt, "DocumentRoot `"$(ApacheConformPath $wwwDir)`"")
    $oldDocRootPath = $docRootM.Groups['path'].Value
    $oldDocRootPath = [regex]::Escape((ApacheConformPath $oldDocRootPath))
    $docRootDirP = regex "^\<Directory\s+`"$oldDocRootPath`"\s*\>" "Multiline, IgnoreCase, CultureInvariant"
    $txt = $docRootDirP.Replace($txt, "<Directory `"$(ApacheConformPath $wwwDir)`">")
}

$listenP = regex '^Listen\s+(\S*)' Multiline
$txt = $listenP.Replace($txt, "Listen $wwwListen")

# Install PHP

## Try PHP 7

$php7 = App-Exe "Bench.PHP7"
if ($php7) {
    Write-Host "Found PHP 7 - registering php7apache2_4.dll in httpd.conf"
    $php7Dir = App-Dir "Bench.PHP7"
    $php7Module = "$php7Dir\php7apache2_4.dll"

    $txt = Asure-PatternLine $txt `
        '^LoadModule\s+php\d_module\s+"(.*?)"' `
        "LoadModule php7_module `"$(ApacheConformPath $php7Module)`""

    $txt = Asure-PatternLine $txt `
        '^PHPIniDir\s+"(.*?)"' `
        "PHPIniDir `"$(ApacheConformPath $php7Dir)`""

    $txt = Asure-PatternLine $txt `
        '^AddType\s+application/x-httpd-php\s+(.*?)$' `
        "AddType application/x-httpd-php php php7"
}

## Try PHP 5

$php5 = App-Exe "Bench.PHP5"
if ($php5 -and !$php7) {
    Write-Host "Found PHP 5 - registering php5apache2_4.dll in httpd.conf"
    $php5Dir = App-Dir "Bench.PHP5"
    $php5Module = "$php5Dir\php5apache2_4.dll"

    $txt = Asure-PatternLine $txt `
        '^LoadModule\s+php\d_module\s+"(.*?)"' `
        "LoadModule php5_module `"$(ApacheConformPath $php5Module)`""

    $txt = Asure-PatternLine $txt `
        '^PHPIniDir\s+"(.*?)"' `
        "PHPIniDir `"$(ApacheConformPath $php5Dir)`""

    $txt = Asure-PatternLine $txt `
        '^AddType\s+application/x-httpd-php\s+(.*?)$' `
        "AddType application/x-httpd-php php php5"
}

# Add user configuration file

if (!(Test-Path $userConfigFile))
{
    Write-Host "Creating Apache custom configuration file: $userConfigFile"
    $nl = [Environment]::NewLine
    "# Apache Custom Configuration for Bench${nl}${nl}ServerName localhost" | Out-File $userConfigFile -Encoding Default
}
$userConfigFileName = [IO.Path]::GetFileName($userConfigFile)
$userConfigPattern = "^Include\s+`".*" + [regex]::Escape($userConfigFileName) + "`""
$txt = Asure-PatternLine $txt $userConfigPattern "Include `"$(ApacheConformPath $userConfigFile)`""

# Write configuration

[IO.File]::WriteAllText($confFile, $txt, [Text.Encoding]::UTF8)
