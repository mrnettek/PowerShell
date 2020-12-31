<#
.SYNOPSIS
    This script deletes a file from an FTP Server
.DESCRIPTION
    This script is a rewrite of an MSDN Sample
.NOTES
    File Name  : Remove-FtpFile.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/system.net.ftpwebrequest.aspx
.EXAMPLE
    PSH [C:\foo]: .\Remove-FtpFile.ps1
    Delete status: 250 DELE command successful.
#>
$ServerUri = New-Object System.Uri "ftp://www.reskit.net/powershell/foo.txt"
# The serverUri parameter should use the ftp:// scheme.
# It contains the name of the server file that is to be deleted.
# Example: ftp://contoso.com/someFile.txt.

if ($ServerUri.Scheme -ne [system.Uri]::UriSchemeFtp) {
        " Bad URI"; return
}

# Get the object used to communicate with the server.
$request = [system.Net.FtpWebRequest]::Create($serverUri)
$request.Method = [System.Net.WebRequestMethods+ftp]::Deletefile
$Request.Credentials = New-Object System.Net.NetworkCredential "anonymous","tfl@psp.co.uk"

$response = $request.GetResponse()
"Delete status: {0}" -f $response.StatusDescription
$response.Close();