<#
.SYNOPSIS
    Create and parses an Int16
.DESCRIPTION
    This script creates an Int16, then parses it using both
	the parse and tryparse methods
.NOTES
    File Name  : parse-int16.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\parse-int16.ps1
    The integer $i=1234
    The string "1234" parsed correctly as an int16: True
    The string "123456789" parsed correctly as an int16: False
#>

##
# Start of Script
##

# Create an int16 and two strings
$i=new-object system.int16
$s1="1234"
$s2="123456789"

# Use the Parse static method
$i=[system.int16]::parse($s1)
"The integer `$i={0}" -f $i

# Use the TryParse static method with small and too large a number
$result=[system.int16]::tryparse($s1,[ref] $i)
"The string `"{0}`" parsed correctly as an int16: {1}" -f $s1,$result
$result=[system.int16]::tryparse($s2,[ref] $i)
"The string `"{0}`" parsed correctly as an int16: {1}" -f $s2,$result
# End of Script