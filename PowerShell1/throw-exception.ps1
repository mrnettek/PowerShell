<#
.SYNOPSIS
   Shows throwing an exception in a function, caught in caller.  
.DESCRIPTION
    This is a re-written MSDN Sample
.NOTES
    File Name  : throw-exception.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Original script at:
    http://pshscripts.blogspot.com/2009/01/Throw-exceptionps1.html
	MSDN Sample at:
	http://msdn.microsoft.com/en-us/library/1ah5wsex.aspx
.EXAMPLE
    PS C:\foo> .\Throw-Exception.ps1
    Num[0] - Result = 300
    Trying to get Num[4]
    In catch block
    Error caught: System.IndexOutOfRangeException
#>

###
#  Start of script
###


# Helper function
function GetNumber{
 param ($index)
 $nums = 300, 600, 900
 if ($index -gt $nums.Length) {
 Throw [system.IndexOutOfRangeException]
 }
 else {
 $nums[$index]
 }
}

# Start of main script

# Get one that works...
$result = GetNumber 0
"Num[0] - Result = {0}" -f $result

# Now try and catch the following
try {
"Trying to get Num[4]"
$result = GetNumber 4
}
Catch {
"In catch block"
"Error caught: {0}" -f $Error[0]
}