<#
.SYNOPSIS
    Illustrates Int32 data type  
.DESCRIPTION
    This script creates,displays and formats an Int32
.NOTES
    File Name  : get-int32.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-int32.ps1
    42424242

    The value of this int32 is: 42424242

    The value of this int32 is 42,424,242

    Min value of an Int32 is: -2,147,483,648
    Max value of an Int32 is: 2,147,483,647
#>

##
# Start of Script
##
# Create the int32
[system.int32] $i = 0

# create and display a value:
$i=42424242
$i
""
# display better
"The value of this int32 is: {0}"  -f $i
""
# and now nicely formatted
"The value of this int32 is {0}" -f $i.tostring("0,000")
""
# show max/min value
"Min value of an Int32 is: {0}"  -f [System.Int32]::minvalue.tostring("0,000")
"Max value of an Int32 is: {0}"  -f [System.Int32]::maxvalue.tostring("0,000")
# End of script