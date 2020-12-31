<#
.SYNOPSIS
    This script creates and sends an email using SMTP.
.DESCRIPTION
    This script firt creates a mail message, populates it
    with subject and body, creates an SMTP client that 
    sends the email message. Any errors are captured. If 
    everythign works there is no output
.NOTES
    File Name  : get-autohelp.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted to:
	    http://msdn.microsoft.com/en-us/library/14k9fb7t.aspx
.EXAMPLE
    Left as an exercise to the reader
#>
$to = "jane@contoso.com"
$from = "ben@contoso.com"
$message = new-object system.Net.Mail.MailMessage $from, $to

$message.Subject = "Using the new SMTP client.";
$message.Body = "Using this new feature, you can send an e-mail message from an application very easily."

$server = "Cookham8"
$client = New-Object System.Net.Mail.SmtpClient $server
$client.UseDefaultCredentials = $true

try {
	$client.Send($message);
} 
catch {
	"Exception caught in New-TestMessage2: {0}" -f $Error[0]
	}
