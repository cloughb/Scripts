# Script to automate the backing up of important files

function Get-AllExceptionMessages([Exception]$Exception)
{
    $fullExceptionMessage = $exception.Message;

    $innerException = $exception.InnerException;
    
    while ($inner.Exception -ne $null)
    {
        $fullExceptionMessage += [string]::Format("{0}{0}{1}", [Environment]::NewLine, $innerException.Message);

        $innerException = $innerException.InnerException;
    }
    return $fullExceptionMessage;
}

function Send-Email([string]$Subject, [string]$Body)
{
    #Sends an email with specified subject and body
    $smtpServer = "smtp.mailgun.org"
    $port       = 587
    $username   = "postmaster@YOUR_DOMAIN.mailgun.org"
    $password   = ConvertTo-SecureString "YOUR PASSWORD" -AsPlainText -Force
    $credentials = New-Object System.Management.Automation.PSCredential($username, $password)
    $from       = "Benjamin Clough <mailgun@YOUR_DOMAIN.mailgun.org>"
    $to         = "yourname@gmail.com"
    
    Send-MailMessage `
    -SmtpServer $smtpServer `
    -Port $port `
    -UseSsl `
    -Credential $credentials `
    -From $from `
    -To $to `
    -Subject $Subject `
    -Body $Body
}

$ErrorActionPreference = "Stop"

$exitCode = 0

# Main Logic, backup initialization

