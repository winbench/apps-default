$includeCompatibilityTools = Get-AppConfigBooleanValue "Bench.ImageMagick" "IncludeCompatibilityTools"

if (!$includeCompatibilityTools) {
    $exeFile = App-Exe "Bench.ImageMagick"
    $exeInfo = New-Object System.IO.FileInfo $exeFile
    $magickPath = App-Path "Bench.ImageMagick"
    Write-Host "$($exeInfo.Name) $($exeInfo.Length)"
    $executables = Get-ChildItem "$magickPath\*.exe"
    foreach ($f in $executables) {
        Write-Host "Checking $($f.Name)"
        if ($f.Name -eq $exeInfo.Name) { continue }
        if ($f.Length -eq $exeInfo.Length) { del $f }
    }
}
