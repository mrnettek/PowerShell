<#
.SYNOPSIS
    This script displays the value, and type, of an expression.
.DESCRIPTION
    This script is a rewrite of the second example on this page, The 
    script illustrates how to use the GetType method to return
    the type that results from a calculation. in this case, two 
    multiplying two int32 with the Pi field results in a System.Double.
.NOTES
    File Name  : Get-TypeTest.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/58918ffs.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-Typetest.PS1
    The type of $Radius is       : System.Int32
    Area =                         28.2743338823081
    The type is the expression is: System.Double
#>

##
# Strt of Script
##
 
# Set and display type of radius
[int] $radius = 3
"The type of `$Radius is       : {0}" -f $radius.GetType()

# Display Area, and the type of an expression.
"Area                           {0}" -f ($radius * $radius * [System.Math]::PI)
"The type is the expression is: {0}" -f ($radius * $radius * [System.Math]::PI).GetType()
# End of Script