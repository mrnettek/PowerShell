<#
.SYNOPSIS
    This script crealtes and sends an SMTP email message.
.DESCRIPTION
    This script first creates a system.net.mail.mailmessage, and populates
    it. Next, it creates an system.Net.Mail.SmtpClient, which then sends
    the message to the SMTP Server, and onwards transmission. This script
    is effectively a re-write of the C# sample above.
.NOTES
    File Name  : Send-EmailMessage.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/67w4as51.aspx
.EXAMPLE
    PSH [C:\foo]: .\Send-EmailMessage.ps1'
    Message sent successfully
#>
 
##
# Start of Script
##
 
# Contents of the Email message
$to      = "doctordns@gmail.com"
$from    = "jane@cookham.net"
$subject = "Using the .NET SMTP client."
$body    = "Using this new feature, you can send an e-mail message from an application very easily."
             
# Create meil message
$message = New-Object system.net.mail.MailMessage $from, $to, $subject, $body
 
#Create SMTP client
$server = "cookham8"
$port = 25
$client = New-Object system.Net.Mail.SmtpClient $server, $port
 
# Credentials are necessary if the server requires the client 
# to authenticate before it will send e-mail on the client's behalf.
$client.Credentials = [system.Net.CredentialCache]::DefaultNetworkCredentials
 
# Try to send the message
try {
       $client.Send($message)
       "Message sent successfully"
}
  
# Catch an error
catch {
"Exception caught in CreateTestMessage1(): "
}
# End of Script