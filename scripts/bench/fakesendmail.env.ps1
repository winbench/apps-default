$deliveryDir = Get-AppConfigValue "Bench.FakeSendmail" "MailDeliveryDir"

# If the MailDeliveryDir app property is set, configure sendmail to store mails as files only.
if ($deliveryDir)
{
    if (!(Test-Path $deliveryDir -PathType Container))
    {
        echo "Creating delivery directory for sendmail: $deliveryDir"
        $_ = mkdir $deliveryDir -Force
    }

    echo "Adapting sendmail configuration to deliver to directory"

    $configFile = [IO.Path]::Combine((App-Dir "Bench.FakeSendmail"), "sendmail.ini")
    $backupFile = "${configFile}.$([IO.Path]::GetRandomFileName())"
    copy $configFile $backupFile -Force
    Get-Content $backupFile `
        | % { $_ -replace "^smtp_server\s*=.*$", "smtp_server=$deliveryDir" } `
        | % { $_ -replace "^hostname\s*=.*$", "hostname=localhost" } `
        | Set-Content $configFile

    del $backupFile
}

$sendmailExe = App-Exe "Bench.FakeSendmail"
$sendmailPath = "\`"" + $sendmailExe.Replace("\", "/") + "\`""

$php5ini = [IO.Path]::Combine((App-Dir "Bench.PHP5"), "php.ini")
if (Test-Path $php5ini)
{
    echo "Registering fake sendmail as mail method in PHP 5"
    $backupFile = "${php5ini}.$([IO.Path]::GetRandomFileName())"
    copy $php5ini $backupFile -Force
    Get-Content $backupFile `
        | % { $_ -replace "^SMTP\s*=.*$", "; `$0" } `
        | % { $_ -replace "^smtp_port\s*=.*$", "; `$0" } `
        | % { $_ -replace "^(?:;\s*)sendmail_path\s*=.*$", "sendmail_path = `"$sendmailPath -t -i`"" } `
        | Set-Content $php5ini

    del $backupFile
}

$php7ini = [IO.Path]::Combine((App-Dir "Bench.PHP7"), "php.ini")
if (Test-Path $php7ini)
{
    echo "Registering fake sendmail as mail method in PHP 7"
    $backupFile = "${php7ini}.$([IO.Path]::GetRandomFileName())"
    copy $php7ini $backupFile -Force
    Get-Content $backupFile `
        | % { $_ -replace "^SMTP\s*=.*$", "; `$0" } `
        | % { $_ -replace "^smtp_port\s*=.*$", "; `$0" } `
        | % { $_ -replace "^(?:;\s*)sendmail_path\s*=.*$", "sendmail_path = `"$sendmailPath -t -i`"" } `
        | Set-Content $php7ini

    del $backupFile
}
