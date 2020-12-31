<#
.SYNOPSIS
    Pings blog servers in my list    
.DESCRIPTION
    This script uses the Get-Web cmdlet to ping a group of blog servers.
	See http://huddledmasses.org/get-web-another-round-of-wget-for-powershell/ for
	details on the Get-Web cmdlet and how to use it.
.NOTES
    File Name  : Ping-BlogServes.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script will be posted to: 
	http://www.pshscripts.blogspot.com
	Details of Get-Web
	http://huddledmasses.org/get-web-another-round-of-wget-for-powershell/
.EXAMPLE
.PARAMETER bar
#>

###
# start script
###

# First ensure get-web cmdlet is loaded.

try {
if (!(Get-PSSnapin poshhttp)) {Add-PSSnapin poshhttp}
}
catch {"error?"; $Error[0];"continuing"}
# create XML doc to send
# first create string
$str = @"
<?xml version="1.0" encoding="utf-8"?>
<methodCall>
 <methodName>weblogUpdates.ping</methodName>
 <params>
  <param><value>
     <string>PowerShell Scripts</string>
   </value></param>
  <param><value>
     <string>http://pshscripts.blogspot.com/</string>
   </value></param>
 </params>
</methodCall>
"@
# Convert to XML
$xml = [xml] $Str

# now create hash table of post parameters
$pp = New-Object system.Collections.Hashtable
$pp += @{"text" = $xml}

# Now get a list of sites in my sites ping list
$content = Get-content c:\foo\sites.txt
"Pinging {0} sites" -f $content.count

foreach ($site in $content) {
"Pinging: site: {0}" -f $site

$h = Get-Web $site -post $pp 
"Response:"
$h.html.methodResponse
"----------"
}
