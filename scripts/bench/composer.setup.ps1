$php5 = App-Exe "Bench.PHP5"
$php7 = App-Exe "Bench.PHP7"
if ($php7) { $php = $php7 } else { $php = $php5 }
$wget = App-Exe "Bench.Wget"

$composerDir = App-Dir "Bench.Composer"
if (!(Test-Path $composerDir)) { $_ = mkdir $composerDir }
cd $composerDir

$expectedSignature = $(& $wget -q -O - https://composer.github.io/installer.sig)
& $wget -q -O "composer-setup.php" "https://getcomposer.org/installer"
$actualSignature = $(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if ( $expectedSignature -ne $actualSignature )
{
  del composer-setup.php
  Write-Error "ERROR: Invalid installer signature"
  exit 1
}

"@php `"%~dp0composer.phar`" %*" | Out-File "composer.bat" -Encoding Default

& $php composer-setup.php --quiet
$result = $LastExitCode
del composer-setup.php
exit $result
