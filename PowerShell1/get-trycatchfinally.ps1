<#
.SYNOPSIS
    Shows Try/Catch/Finally using Powershell
.DESCRIPTION
    This is an MSDN Sample, re-written in PowerShell
.NOTES
    File Name  : get-trycatchfinally.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Original script posted to:
	http://pshscripts.blogspot.com/2009/01/get-trycatchfinallyps1.html
	MSDN Sample at:
	http://msdn.microsoft.com/en-us/library/zwc8s4fz.aspx
.EXAMPLE
    PS C:\foo> .\Get-TryCatchFinally.ps1
    Error in conversion
    Error record: Cannot convert value "Some string" to type "System.Int32". Error: "Input string was not in a correct format."
    $i = 123
    $i = System.Int32
#>

###
# Start of script
###

# Create some explicitly typed values
[int]    $i = 123
[string] $s = "Some string"
[object] $o = $s

# Now try to convert an object into an integer (which will fail)

try {
# Invalid conversion; o contains a string not an int
$i = [int] $o;
}

# catch the error and display
catch {
"Error in conversion"
"Error record: {0}" -f $Error[0]
}
# Clean up
finally {
"`$i = {0}" -f $i
"`$i = {0}" -f $i.gettype()
}
# End of Script