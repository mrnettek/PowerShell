<#
.SYNOPSIS
    Create and parses an Int32
.DESCRIPTION
    This script creates an Int32, then parses it using both
	the parse and tryparse methods
.NOTES
    File Name  : parse-int32.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\parse-int32.ps1'
    The integer $i=1234
    The string "1234" parsed correctly as an int32: True
    The string "12345678901" parsed correctly as an int32: False
#>

##
# Start of Script
##

# Create an int32 and two strings
$i=new-object system.int16
$s1="1234"
$s2="12345678901"

# Use the Parse static method
$i=[system.int32]::parse($s1)
"The integer `$i={0}" -f $i

# Use the TryParse static method with small and too large a number
$result=[system.int32]::tryparse($s1,[ref] $i)
"The string `"{0}`" parsed correctly as an int32: {1}" -f $s1,$result
$result=[system.int32]::tryparse($s2,[ref] $i)
"The string `"{0}`" parsed correctly as an int32: {1}" -f $s2,$result
# End of Script