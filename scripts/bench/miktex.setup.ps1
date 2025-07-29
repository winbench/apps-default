$appId = "Bench.MiKTeX"
$appDir = App-Dir $appId
$appPath = App-Path $appId
$homeDir = Get-ConfigValue "HomeDir"
$userTexmfRoot = "$homeDir\texmf"
$packageSet = Get-AppConfigValue $appId "PackageSet"
$packages = Get-AppConfigListValue $appId "Packages"
$packageRepository = Get-AppConfigValue $appId "PackageRepository"
$installer = "$appDir\miktexsetup_standalone.exe"

Write-Host "- Downloading package set $packageSet"
Write-Host "Local package repo: $packageRepository"
& $installer `
    --local-package-repository="$packageRepository" `
    --package-set=$packageSet `
    --quiet `
    download
Write-Host "- Installing MiKTeX"
Write-Host "System TEXMF root: $appDir\texmfs"
& $installer `
    --local-package-repository="$packageRepository" `
    --package-set=$packageSet `
    --portable="$appDir" `
    --quiet `
    install

$initexmf = "$appPath\initexmf.exe"
if (!(Test-Path $initexmf)) {
    Write-Host $initexmf
    throw "MiKTeX configuration utility initexmf.exe not found"
}

# https://miktex.org/kb/texmf-roots
# https://miktex.org/kb/tds
if (!(Test-Path $userTexmfRoot)) {
    mkdir $userTexmfRoot | Out-Null
    mkdir "$userTexmfRoot\bibtex" | Out-Null
    mkdir "$userTexmfRoot\bibtex\bib" | Out-Null
    mkdir "$userTexmfRoot\bibtex\bst" | Out-Null
    mkdir "$userTexmfRoot\tex\generic" | Out-Null
    mkdir "$userTexmfRoot\tex\latex" | Out-Null
    mkdir "$userTexmfRoot\tex\xelatex" | Out-Null
    mkdir "$userTexmfRoot\fonts" | Out-Null
    mkdir "$userTexmfRoot\fonts\truetype" | Out-Null
    mkdir "$userTexmfRoot\fonts\opentype" | Out-Null
}
Write-Host "User TEXMF root: $userTexmfRoot"
& $initexmf --user-roots="$userTexmfRoot"

$miktex = "$appPath\miktex.exe"
if (!(Test-Path $miktex)) {
    throw "MiKTeX CLI miktex.exe not found"
}

function extractInstalledPackageNames() {
    begin {
        [regex]$ex = "^(?<id>.+),true$"
    }
    process {
        $m = $ex.Match($_)
        if ($m.Success) {
            return $m.Groups["id"].Value
        }
    }
}

function installedPackages() {
    & $miktex packages list --template "{id},{isInstalled}" | extractInstalledPackageNames
}

Write-Host "- Installing LaTeX packages..."

$installed = installedPackages

foreach ($packageId in $packages) {
    if (!($installed -contains $packageId)) {
        if ($packageRepository -like "$appDir\*") {
            & $miktex packages install $packageId
        } else {
            & $miktex packages install --repository="$packageRepository" $packageId
        }
        $installed = installedPackages
    } else {
        Write-Host "Package $packageId already installed"
    }
}
