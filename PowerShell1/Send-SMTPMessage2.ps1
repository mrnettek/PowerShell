<#
.SYNOPSIS
    This script creates and sends an SMTP Mail Mesage
.DESCRIPTION
    This script creates a mail message, then sends it. This is
    a re-write of an MSDN sample.
.NOTES
    File Name  : Send-SMTPMessage2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.net.mail.mailaddress.aspx
.EXAMPLE
    PSH [C:\foo]: .\Send-SMTPMessage2.ps1'
    Sending an e-mail message to The Doctor and tfl@powershell.com 
#>

##
# Start of Script
##

# Create To/From Addresses using System.Net.Mail.MailAddress
$from = New-Object System.Net.Mail.Mailaddress "tfl@psp.co.uk","Thomas Lee"
$to   = New-Object System.Net.Mail.Mailaddress "doctordns@gmail.com","The Doctor"

# Create the mail message and add subject and body
$message = New-Object System.Net.Mail.MailMessage $from,$to
$message.Subject = "Using the SmtpClient class."
$message.Body    = "Using this feature, you can send an e-mail message from "
$message.Body   += "any application very easily."

# Create and Add a BCC
$bcc = New-Object System.Net.Mail.MailAddress "tfl@powershell.com"
$message.Bcc.Add($bcc)

# Create SMTP Client
$Server="Cookham8"
$client = New-Object System.Net.Mail.SmtpClient($server);
$client.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials

# Send SMTP Mail
"Sending an e-mail message to {0} and {1}" -f $to.DisplayName, $message.Bcc.ToString()
try {
    $client.Send($message)
}  
catch {
    "Exception caught in sending mail"
	$Error[0]
}
# End of Script