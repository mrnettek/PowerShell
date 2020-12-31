<#
.SYNOPSIS
    This script gets and displays the cookies returned from a site.
.DESCRIPTION
    This script calls System.Net.WebRequest to get a page. in the 
    response there may be cookies returned which this script then
    displays. By default, the cookies returned from the MSDN home page
    are displayed. To improve production orientation, the creation of
    the request and getting the response are protected by try/catch
    blocks.
.NOTES
    File Name  : get-cookie.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.net.cookie.aspx
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled4.ps1'
    3 Cookies returned from: http://www.microsoft.com/msdn
    
    Cookie:
    A = I&I=AxUFAAAAAADmCwAA/fh06TVFlKw6GSuBKKj6Yg!!&M=1
    Domain      : .microsoft.com
    Path        : /
    Port        :
    Secure      : False
    When issued : 6/7/2009 10:06:30 AM
    Expires     :
    Expired?    : False
    Don't save  : False
    Comment     :
    Uri for comments:
    Version     : 0
    String: A=I&I=AxUFAAAAAADmCwAA/fh06TVFlKw6GSuBKKj6Yg!!&M=1 :
    
    Cookie:
    ADS = SN=175A21EF
    Domain      : .microsoft.com
    Path        : /
    Port        :
    Secure      : False
    When issued : 6/7/2009 10:06:30 AM
    Expires     :
    Expired?    : False
    Don't save  : False
    Comment     :
    Uri for comments:
    Version     : 0
    String: ADS=SN=175A21EF :
    
    Cookie:
    mediaRssUrl = http://www.microsoft.com/feeds/msdn/en-us/HDI/Home-HDI.xml
    Domain      : msdn.microsoft.com
    Path        : /
    Port        :
    Secure      : False
    When issued : 6/7/2009 10:06:30 AM
    Expires     :
    Expired?    : False
    Don't save  : False
    Comment     :
    Uri for comments:
    Version     : 0
    String: mediaRssUrl=http://www.microsoft.com/feeds/msdn/en-us/HDI/Home-HDI.xml :
#>

param (
$site = "http://www.microsoft.com/msdn"
)
 
##
# Start of script
##
 
# Create the web request object, catching any errors
try {
$request = [System.Net.WebRequest]::Create($site)
$request.CookieContainer = New-Object System.Net.CookieContainer
}
catch {
"Error creating request";$requst
return
}
 
# Now get response
try {
$response = $request.GetResponse()
}
catch {
"Error getting response from $site - try later"
return
}
 
# Print number of cookies
if ($response.Cookies.Count -gt 0) {
"{0} Cookies returned from: {1}" -f $Response.Cookies.Count,$site
""
}
 
# Print the properties of each cookie.
foreach ($cook in $Response.Cookies)    {
"Cookie:"
"{0} = {1}"    -f $cook.Name, $cook.Value
"Domain      : {0}"     -f $cook.Domain
"Path        : {0}"     -f $cook.Path
"Port        : {0}"     -f $cook.Port
"Secure      : {0}"     -f $cook.Secure
"When issued : {0}"     -f $cook.TimeStamp
"Expires     : {0}"     -f $cook.expireds
"Expired?    : {0}"     -f $cook.expired
"Don't save  : {0}"     -f $cook.Discard
"Comment     : {0}"     -f $cook.Comment
"Uri for comments: {0}" -f $cook.CommentUri
"Version     : {0}"     -f $cook.Version
"String: {0} :"         -f $cook.ToString()
""
}
# End of Script