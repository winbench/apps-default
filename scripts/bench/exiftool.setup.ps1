$exiftoolDir = App-Dir "Bench.ExifTool"
$orgFile = "$exiftoolDir\exiftool(-k).exe"
$trgFile = "$exifToolDir\exiftool.exe"

if (!(Test-Path $trgFile) -and (Test-Path $orgFile))
{
  move $orgFile $trgFile
}
