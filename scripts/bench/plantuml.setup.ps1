$appDir = App-Dir "Bench.PlantUML"

# Create Wrapper Scripts

"@ECHO OFF
java.exe -jar `"%~dp0\plantuml.jar`" %*" `
    | Out-File "$appDir\plantuml.bat" -Encoding Default

"@ECHO OFF
START `"PlantUML`" javaw.exe -jar `"%~dp0\plantuml.jar`" -gui" `
    | Out-File "$appDir\plantuml-gui.bat" -Encoding Default

# Create ICO File

$imageMagick = App-Exe "Bench.ImageMagick"
if ($imageMagick -and (Test-Path $imageMagick)) {
    # Extract Logo Image
    Add-Type -Assembly System.IO.Compression.FileSystem
    $zip = [IO.Compression.ZipFile]::OpenRead("$appDir\plantuml.jar")
    try {
        $zip.Entries `
            | where {$_.Name -like 'logo.png'} `
            | foreach {[System.IO.Compression.ZipFileExtensions]::ExtractToFile($_, "$appDir\logo.png", $true)}
    } finally {
        $zip.Dispose()
    }
    # Convert PNG to ICO
    & $imageMagick convert -resize x32 -gravity center -crop "32x32+0+0" "$appDir\logo.png" "$appDir\logo.ico"
}
