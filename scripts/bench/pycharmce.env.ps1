$ideaDir = App-Dir "Bench.PyCharmCE"
$propertiesFile = "$ideaDir\bin\idea.properties"
$homeDir = Get-ConfigValue "HomeDir"
$ideaConfigPath = "$homeDir\.PyCharmCE\config"
$ideaSystemPath = "$homeDir\.PyCharmCE\system"
$ideaPlugInsPath = "$homeDir\.PyCharmCE\plugins"
$ideaLogPath = "$homeDir\.PyCharmCE\log"


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

$propertiesContent = SetConfigProperty $propertiesContent "idea.config.path" $ideaConfigPath.Replace("\", "/")
$propertiesContent = SetConfigProperty $propertiesContent "idea.system.path" $ideaSystemPath.Replace("\", "/")
$propertiesContent = SetConfigProperty $propertiesContent "idea.plugins.path" $ideaPlugInsPath.Replace("\", "/")
$propertiesContent = SetConfigProperty $propertiesContent "idea.log.path" $ideaLogPath.Replace("\", "/")

[IO.File]::WriteAllText($propertiesFile, $propertiesContent, $utf8)
