$python3Dir = App-Dir "Bench.Python3"
$python3Version = App-Version "Bench.Python3"


$targetFile = "\Lib\site-packages\tornado\platform\asyncio.py"
$Utf8WithoutBom = New-Object System.Text.UTF8Encoding $false

function patch ($pythonDir) {
    $filePath = $pythonDir + $targetFile
    if (Test-Path $filePath) {
        $code = [IO.File]::ReadAllText($filePath, $Utf8WithoutBom)
        if (!$code.Contains("asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())")) {
            $code = $code.Replace(
                "import asyncio",
                "import asyncio`r`nimport sys`r`nif sys.platform == 'win32':`r`n    asyncio.set_event_loop_policy(asyncio.WindowsSelectorEventLoopPolicy())")
            [IO.File]::WriteAllText($filePath, $code, $Utf8WithoutBom)
        }
    }
}

if ($python3Version -like "3.8.*") {
    patch $python3Dir
}
