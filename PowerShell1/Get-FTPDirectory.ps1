<#
.SYNOPSIS
    This script used FTP to get and display the root of an FTP site.
.DESCRIPTION
    This script re-implements an MSDN sample.
.NOTESW
    File Name  : Get-FtpDirectory.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/ms229716.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-FtpDirectory.ps1
    drwxrwxrwx   1 user     group           0 Dec  4  2005 pcpro
    drwxrwxrwx   1 user     group           0 Sep 23 15:18 PowerShell
    ... {Listing truncated}
    Download Complete, status:
    226-Maximum disk quota limited to 100000 Kbytes
        Used disk quota 78232 Kbytes, available 21767 Kbytes
    226 Transfer complete.
#>
# Get the object used to communicate with the server.
$Request = [System.Net.WebRequest]::Create("ftp://www.reskit.net")
$Request.Method =  [System.Net.WebRequestMethods+Ftp]::ListDirectoryDetails

# This example assumes the FTP site uses anonymous logon.
# Username/password not real
$Request.Credentials = New-Object System.Net.NetworkCredential  "Anonymous",tfl@psp.co.uk 

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