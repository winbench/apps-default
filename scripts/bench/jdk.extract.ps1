param ($archive, $targetDir)
$7z = App-Exe "Bench.7z"


$jdkexDir = Empty-Dir "$(Get-ConfigValue "TempDir")\jdkex64"
#$cabPath = ".rsrc\1033\JAVA_CAB10"
$toolsZipPath = "$jdkexDir\tools.zip"

& $7z e "$archive" "-o$jdkexDir" | Out-Null
#& $7z e "$jdkexDir\111" "-o$jdkexDir" | Out-Null

if (!(Test-Path "$toolsZipPath")) {
    throw "Did not find the expected content in the JDK archive"
}

& $7z x "-o$targetDir" "-x!lib\missioncontrol*" "-x!bin\jmc.exe" "-x!javafx-src.zip" "$toolsZipPath" | Out-Null

Purge-Dir $jdkexDir

foreach ($f in (Get-ChildItem $targetDir -Include "*.pack" -Recurse)) {
    & "$targetDir\bin\unpack200.exe" -r $f.FullName ([IO.Path]::ChangeExtension($f.FullName, ".jar")) | Out-Null
}
