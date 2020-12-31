<#
.SYNOPSIS
    Illustrates Int16 data type  
.DESCRIPTION
    This script creates,displays and formats an Int16
.NOTES
    File Name  : get-int16.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-int16.ps1
    4142
    The value of this int16 is: 4142
    The value of this int16 is: 4,142
  
	Min value of an Int16 is: -32,768
    Max value of an Int16 is: 32,767
#>

## 
# Start of Script
##


# Create the int16

[system.int16] $i = 0

# set and display a value:
$i=4142
$i
"The value of this int16 is: {0}"  -f $i

# and nicely formatted
"The value of this int16 is: {0}" -f $i.tostring("0,000")
""

# Max/Min value
"Min value of an Int16 is: {0}"  -f [System.Int16]::minvalue.tostring("0,000")
"Max value of an Int16 is: {0}"  -f [System.Int16]::maxvalue.tostring("0,000")
# End of script