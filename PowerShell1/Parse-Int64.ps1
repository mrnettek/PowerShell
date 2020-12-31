<#
.SYNOPSIS
    Create and parses an Int64
.DESCRIPTION
    This script creates an Int64, then parses it using both
	the parse and tryparse methods
.NOTES
    File Name  : parse-int64.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Int\parse-int64.ps1'
    Varable $i created - type is Int64
    The integer $i=1234 - parsed OK as Int64

    The string "1234" parsed correctly as an int64: True
    The string "12345678934212321212" parsed correctly as an int64: False    
#>

##
# Start of Script
##

# Create an int64 and two strings
$i=new-object system.int64
"Varable `$i created - type is {0}" -f $i.GetTypeCode()
$s1="1234"
$s2="12345678934212321212"

# Use the Parse static method on S1 that WILL work OK
$i=[system.int64]::parse($s1)
"The integer `$i={0} - parsed OK as Int64" -f $s1
""

# Use the TryParse static method with small and too large a number
$result=[system.int64]::tryparse($s1,[ref] $i)
"The string `"{0}`" parsed correctly as an int64: {1}" -f $s1,$result
 
$result=[system.int64]::tryparse($s2,[ref] $i)
"The string `"{0}`" parsed correctly as an int64: {1}" -f $s2,$result
# End of Script