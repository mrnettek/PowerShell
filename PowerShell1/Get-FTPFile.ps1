<#
.SYNOPSIS
    This script used FTP to get and display a text file.
.DESCRIPTION
    This script re-implements an MSDN Sample
.NOTESW
    File Name  : Get-FtpFile.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/09/get-ftpfileps1.html
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/ms229711.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-FtpDirectory.ps1'
    
#>
# Get the object used to communicate with the server.
$Request = [System.Net.WebRequest]::Create("ftp://www.reskit.net/hello.txt")
$Request.Method =  [System.Net.WebRequestMethods+Ftp]::DownloadFile

# This example assumes the FTP site uses anonymous logon.
# Username/password not real
$Request.Credentials = New-Object System.Net.NetworkCredential "Anonymous","tfl@psp.co.uk"
$Response = $Request.GetResponse()
$ResponseStream = $Response.GetResponseStream()

# Read and display the text in the file
$Reader = new-object System.Io.StreamReader $Responsestream
[System.Console]::Writeline($Reader.ReadToEnd())

# Display Status
"Download Complete, status:"
$response.StatusDescription 

# Close Reader and Response objects
$Reader.Close()
$Response.Close()