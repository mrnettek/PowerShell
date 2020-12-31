<#
.SYNOPSIS
    This script Uploads a text file to an FTP Server using PowerShell. 
.DESCRIPTION
    This script first creates an FTP 'web' request to upload a file. Then the 
    source file is read from disk and written up to the FTP Server. A response
    is then displayed. This is a rewrite of an MSDN Sample.
.NOTES
    File Name  : Copy-FileToFtp.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://
.EXAMPLE
    PSH [C:\foo]: .Copy-FileToFtp.ps1
    Upload File Complete, status 226-Maximum disk quota limited to 100000 Kbytes
        Used disk quota 78237 Kbytes, available 21762 Kbytes
    226 Transfer complete.
#>
 
# Get the object used to communicate with the server.
$Request = [System.Net.FtpWebRequest]::Create("ftp://www.reskit.net/powershell/Greetings.Txt")
$Request.Method = $Request.Method = [System.Net.WebRequestMethods+ftp]::UploadFile

# This example assumes the FTP site uses anonymous logon.
$Request.Credentials = New-Object System.Net.NetworkCredential "anonymous","tfl@psp.co.uk"

# Copy the contents of the file to the request stream.
$FileContents = [System.IO.File]::ReadAllBytes("C:\foo\scriptlib.zip")
$Request.ContentLength = $fileContents.Length;

$RequestStream = $request.GetRequestStream()
$RequestStream.Write($FileContents, 0, $FileContents.Length);
$RequestStream.Close();
$Response = $Request.GetResponse()
"Upload File Complete, status {0}" -f $Response.StatusDescription
$Response.Close();