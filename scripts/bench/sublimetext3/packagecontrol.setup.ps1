$sublimeTextDataDir = Get-AppConfigValue "Bench.SublimeText3" "DataDir"
$userPackagesDir = "$sublimeTextDataDir\Packages\User"

$packageControlSettings = "$userPackagesDir\Package Control.sublime-settings"

function writeUtf8File ($fileName)
{
    begin
    {
        $utf8 = New-Object System.Text.UTF8Encoding($false)
        $w = New-Object System.IO.StreamWriter($fileName, $false, $utf8)
    }
    process
    {
        $w.WriteLine($_)
    }
    end
    {
        $w.Close()
    }
}

if (!(Test-Path $packageControlSettings))
{
    if (!(Test-Path $userPackagesDir))
    {
        $_ = mkdir $userPackagesDir
    }

    $lines = @(
        "{",
        "    `"installed_packages`":",
        "    ["
    )

    $packages = Get-AppConfigListValue "Bench.SublimeText3.PackageControl" "Packages"
    foreach ($p in $packages)
    {
        $lines += "        `"$p`","
    }
    # remove trailing comma from last package line
    $lastLine = $lines[$lines.Count - 1]
    $lines[$lines.Count - 1] = $lastLine.Substring(0, $lastLine.Length - 1)

    $lines += @(
        "    ]",
        "}"
    )
    $lines | writeUtf8File $packageControlSettings
}
