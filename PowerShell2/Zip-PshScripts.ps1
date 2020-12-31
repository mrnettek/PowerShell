<#
.SYNOPSIS
    Creates a zip file from a folder structure and uploads
	it to an FTP site.
	
.DESCRIPTION
    Creates a zip file of all the scripts in the script library, then uses
	system.net.webrequest to uploade it to a web site.
    Uses ICSharpCode.SharpZipLib.dll
    See http://www.icsharpcode.net/OpenSource/SharpZipLib/
.NOTES
    File Name  : zip-pshscripts.PS1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	NB:The credentials shown here do not work (well they shouldn't)
.LINK
    http://pshscripts.blogspot.com
.EXAMPLE
    Assuming credentials were correct, an example would be
    PS C:\foo> zip-pshscripts.PS1
        Directory: C:\foo

    Mode                LastWriteTime     Length Name
    ----                -------------     ------ ----
    -a---        12/29/2008  11:34 AM      68722 PSScriptLib.ZIP
    Upload Stats:
    226-Maximum disk quota limited to 100000 Kbytes
        Used disk quota 63140 Kbytes, available 36859 Kbytes
    226 Transfer complete.
#>

## 
# Start of script
##

# First, load the zip library
[void] [System.Reflection.Assembly]::LoadFrom("C:\foo\bin\ICSharpCode.SharpZipLib.dll")

# Now create a new zip file object
$zip = new-object ICSharpCode.SharpZipLib.Zip.FastZip

# Define what to zip and from where
$zipfile  = "C:\foo\PSScriptLib.ZIP"
$zipfrom  = "E:\PowerShellScriptLib"
$recurse  = "true"
$ziptoadd = ".ps1"

# Now create the zip file
$zip.CreateZip($zipfile, $zipfrom, $recurse, $ziptoadd)

ls $zipfile

# Here upload it
$sendto     = "ftp://www.reskit.net/powershell/scriptlib.zip"
$ftprequest = [system.net.ftpwebrequest]::Create($Sendto)
$ftprequest.Method = "STOR"

# Now get the zip file and store it into $fileconents
$file = Get-Content $zipfile
$enc = [system.text.encoding]::default
[byte[]] $filebyte= $enc.getbytes($file)


# Set the length of the file to be sent
$length = (ls $zipfile).length
$ftprequest.ContentLength = $length

# Now upload the file
# Let's assume the ftp server is anonomyous (it's not of course!).
$ftprequest.Credentials = New-Object system.Net.NetworkCredential "anonymous","tfl@psp.co.uk"
$requestStream = $ftprequest.GetRequestStream()
$requestStream.Write($filebyte, 0, $length)

# Close file and get response
$requestStream.Close()
$response = $ftprequest.GetResponse();

# Display stats
"Upload Stats:"
$response.StatusDescription

# Close response
$response.Close();  
 