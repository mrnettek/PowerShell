<#
.SYNOPSIS
    Shows detals of an $Error record for an exception
.DESCRIPTION
    Creates an exception then shows how to find out details.    
.NOTES
    File Name  : Get-ErrorDetails.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://pshscripts.blogspot.com/2009/01/get-errordetailsps1.html
.EXAMPLE
    PS C:\foo> .\Get-Errordetails.ps1'
    Output - left as an exercise for the reader
#>

###
# Start of Script
###

# Create divide by zero error

try {
$zero = 0
1/$zero   # will throw an exception
}
catch [System.DivideByZeroException] {
"Exception caught in catch block"
$err = $Error[0]

# display $err contents ($error[0])
"Contents of Error[0]"
$Err | fl * -Force
""

# now - show exception
"Exception details:"
$err.Exception | fl * -Force
""

# To get exception try:
"Exception:"
$err.Exception.InnerException | fl * -Force
""

# To get actual exception in this case:
"Specific exception name:"
$err.Exception.InnerException.tostring().split(":")[0]
}
catch {
"Some other error occurred"
$Error[0]
}
# End of script