<#
.SYNOPSIS
    This script displays statoc properties of a BigInteger 
.DESCRIPTION
    This script demonstrates the static properties of the BigInteger class.
.NOTES
    File Name  : Get-BigIntegerStaticProperties.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
                 .NET Framework 4	
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.numerics.biginteger_properties.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-BigIntegerStaticProperties.ps1
    MinusOne: -1
    Zero    : 0
    One     : 1
#>

# Add the .NET Version 4 System.Numerics namespace
$return = [System.Reflection.Assembly]::LoadWithPartialName("System.Numerics")

# Display the static properties of BigIntegerClass
" MinusOne: {0}" -f [System.Numerics.BigInteger]::MinusOne
" Zero    : {0}" -f [System.Numerics.BigInteger]::Zero
" One     : {0}" -f [System.Numerics.BigInteger]::One

