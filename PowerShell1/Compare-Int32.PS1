<#
.SYNOPSIS
    This script illustrates the CompareExchange Method
.DESCRIPTION
    This script creates three values, and calls CompareExchange method,
    and displays the results. The first time, we compare two non-equal values
    so no exchange is done. The second time, the comparison succeeds and the
    value us updated.	
.NOTES
    File Name  : Compare-int32.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/801kt583.aspx
.EXAMPLE
    PSH [C:\foo]: .\Compare-int32.PS1
    Before 1st call:
    42
    69
    104
 
    After 1st call, before 2nd
    42
    69
    104
 
    After 2nd call
    69
    69
    104
#>

##
# Start of Script
##

# Create 3 int32 values

[int32] $a=42
[int32] $b=69
[int32] $c=104

# Display values before
"Before 1st call:";$a,$b,$c
""

# Call CompareExchange and print results
# This call compares $a with $c, so there are not equal
$result = [System.Threading.Interlocked]::CompareExchange([ref]$a, $b, $c)
"After 1st call, before 2nd"
$a,$b,$c
""

# Call CompareExchange and print results
# This call compares $a with $A, so this call
# returns $a updated to $b
$result = [System.Threading.Interlocked]::CompareExchange([ref]$a, $b, $a)
"After 2nd call"
$a,$b,$c