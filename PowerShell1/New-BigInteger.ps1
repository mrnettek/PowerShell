<#
.SYNOPSIS
    This script creates and displays a BigInteger. 
.DESCRIPTION
    This script is a rewrite of an MSDN sample.
.NOTES
    File Name  : New-BigInteger.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
                 .NET Framework 4	
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/07/new-bigintegerps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.numerics.biginteger.aspx
.EXAMPLE
    PSH [c:\foo]: .\Get-BigInteger.ps1
    Big Integer from 179032.6541:
    179,032
    Big Integer from 1234934157136952:
    1,234,934,157,136,952
#>

# Add the .NET Version 4 System.Numerics.dll
Add-Type -Path "C:\Windows\Microsoft.NET\Framework\v4.0.30319\System.Numerics.dll"

# Create first big integer then display it nicely
$BigIntFromDouble = New-object System.Numerics.BigInteger 179032.6541
"Big Integer from 179032.6541:"
$BigIntFromDouble.ToString("N0")

# Create second big integer then display it nicely
$BigIntFromInt64 = New-object System.Numerics.Biginteger 1234934157136952
"Big Integer from 1234934157136952:"
$Bigintfromint64.tostring("N0")

