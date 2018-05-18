param ($archive, $targetDir)
$7z = App-Exe "Bench.7z"

# if (Get-ConfigBooleanValue Use64Bit)
# {
    $jdkexDir = Empty-Dir "$(Get-ConfigValue "TempDir")\jdk8ex64"
    $cabPath = ".rsrc\1033\JAVA_CAB10"
    $toolsZipPath = "$jdkexDir\tools.zip"

    & $7z e "$archive" "-o$jdkexDir" "$cabPath" | Out-Null
    & $7z e "$jdkexDir\111" "-o$jdkexDir" | Out-Null

    if (!(Test-Path "$toolsZipPath")) {
        throw "Did not find the expected content in the JDK archive"
    }

    & $7z x "-o$targetDir" "-x!lib\missioncontrol*" "-x!bin\jmc.exe" "-x!javafx-src.zip" "$toolsZipPath" | Out-Null
# }
# else
# {
#     $jdkexDir = Empty-Dir "$(Get-ConfigValue "TempDir")\jdk8ex"

#     & $7z x "-o$jdkexDir" "$archive" | Out-Null

#     if (!(Test-Path "$jdkexDir\tools.zip")) {
#         throw "Did not find the expected content in the JDK archive"
#     }

#     & $7z x "-o$targetDir" "-x!lib\missioncontrol*" "-x!bin\jmc.exe" "-x!javafx-src.zip" "$jdkexDir\tools.zip" | Out-Null
# }

Purge-Dir $jdkexDir

foreach ($f in (Get-ChildItem $targetDir -Include "*.pack" -Recurse)) {
    & "$targetDir\bin\unpack200.exe" -r $f.FullName ([IO.Path]::ChangeExtension($f.FullName, ".jar")) | Out-Null
}
