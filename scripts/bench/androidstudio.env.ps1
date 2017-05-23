$homeDir = Get-ConfigValue "HomeDir"
$studioConfigPath = "$homeDir\.AndroidStudio\config"
$studioSystemPath = "$homeDir\.AndroidStudio\system"

$propertiesFile = $env:STUDIO_PROPERTIES
$vmoptionsFile = $env:STUDIO_VM_OPTIONS

$utf8 = New-Object System.Text.UTF8Encoding($false)

Write-Host "Updating $propertiesFile ..."
$propertiesContent = ""
if (Test-Path $propertiesFile)
{
    $propertiesContent = [IO.File]::ReadAllText($propertiesFile, $utf8)
}

function SetConfigProperty($text, $name, $value)
{
    $escName = [regex]::Escape($name)
    $p = New-Object System.Text.RegularExpressions.Regex ("^\s*#?\s*${escName}=.*$", "Multiline")
    if ($p.IsMatch($text))
    {
        return $p.Replace($text, "$name=$value")
    }
    else
    {
        return $text.TrimEnd() + [Environment]::NewLine + "$name=$value" + [Environment]::NewLine
    }
}

$propertiesContent = SetConfigProperty $propertiesContent "idea.config.path" $studioConfigPath.Replace("\", "/")
$propertiesContent = SetConfigProperty $propertiesContent "idea.system.path" $studioSystemPath.Replace("\", "/")

[IO.File]::WriteAllText($propertiesFile, $propertiesContent, $utf8)

if (!(Test-Path $vmoptionsFile))
{
    Write-Host "Creating $vmoptionsFile ..."
    $content = "# Custom VM options for Android Studio"
    [IO.File]::WriteAllText($vmoptionsFile, $content, $utf8)
}

