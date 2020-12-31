<#
.SYNOPSIS
    Shows use of PI field    
.DESCRIPTION
    This script gets and displays system.math's PI field
.NOTES
    File Name  : Get-MathPI.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-mathpi.ps1
    The Value of Pi is 3.14159265358979
#>

##
# Start of script
##

# Obtain value of Pi 
$pi = [math]::pi

# Display the value
"The Value of Pi is {0}" -f $pi
# End of Script