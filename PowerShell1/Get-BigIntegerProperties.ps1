<#
.SYNOPSIS
    This script displays dynamic properties of a BigInteger 
.DESCRIPTION
    This script demonstrates the properties on an instance of BigInteger
.NOTES
    File Name  : Get-BigIntegerProperties.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
                 .NET Framework 4	
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.numerics.biginteger_properties.aspx
.EXAMPLE
    PSH [c:\foo]: .\Get-BigIntegerProperties.ps1
    Big Integer from 4096:

    IsPowerOfTwo : True
    IsZero       : False
    IsOne        : False
    IsEven       : True
    Sign         : 1
#>

# Add the .NET Version 4 System.Numerics.Dll
Add-Type -Path "C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Numerics.dll"

# Create a big integer then display its key properties
$BigInt = New-object System.Numerics.BigInteger 4096
"Big Integer from 4096:"
$BigIntFromDouble | fl *

