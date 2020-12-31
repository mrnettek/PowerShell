<#
.SYNOPSIS
    Illustrates Int64 data type  
.DESCRIPTION
    This script creates,displays and formats an Int364
.NOTES
    File Name  : get-int64.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-int64.ps1'
    42424242

    The value of this int64 is: 42424242

    The value of this int64 is 42,424,242

    Min value of an Int32 is: -9,223,372,036,854,775,808
    Max value of an Int32 is: 9,223,372,036,854,775,807
#>

##
# Start of Script
##

# Create the int64

[system.int64] $i = 0

# create and display a value:
$i=42424242
$i
""

# Display better
"The value of this int64 is: {0}"  -f $i
""
# and now nicely formatted
"The value of this int64 is {0}" -f $i.tostring("0,000")
""

# show max/min value
"Min value of an Int32 is: {0}"  -f [System.Int64]::minvalue.tostring("0,000")
"Max value of an Int32 is: {0}"  -f [System.Int64]::maxvalue.tostring("0,000")
# End of Script