<#
.SYNOPSIS
    Demonstrates use of the HTTPVersion class  
.DESCRIPTION
    This script is a re-write of an MSDN sample,using PowerShell
.NOTES
    File Name  : Get-HTTPVersion.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Sample posted to:
	http://pshscripts.blogspot.com/2009/03/get-httpversionps1.html
	Original MSDN sample at:
	http://msdn.microsoft.com/en-us/library/system.net.httpversion.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-HTTPVersion.ps1'
    The 'ProtocolVersion' of the protocol before assignment is :1.1
    The 'ProtocolVersion' of the protocol after  assignment is :1.0
    The 'ProtocolVersion' of the response object is :1.1
#>

###
# Start of Script
###
 
# Create a 'HttpWebRequest' object and display 
$myHttpWebRequest=[system.net.webrequest]::Create("http://www.microsoft.com")
"The 'ProtocolVersion' of the protocol before assignment is :{0}" -f $myHttpWebRequest.ProtocolVersion

# Assign Version10 to ProtocolVersion
$myHttpWebRequest.ProtocolVersion=[system.net.HttpVersion]::Version10

#  Assign the response object of 'HttpWebRequest' to a 'HttpWebResponse' variable
$myHttpWebResponse=$myHttpWebRequest.GetResponse();

"The 'ProtocolVersion' of the protocol after  assignment is :{0}" -f $myHttpWebRequest.ProtocolVersion
"The 'ProtocolVersion' of the response object is :{0}" -f $myHttpWebResponse.ProtocolVersion

# End of script