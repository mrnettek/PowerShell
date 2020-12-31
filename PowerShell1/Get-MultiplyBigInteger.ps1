<#
.SYNOPSIS
    This script re-implements this MSDN Sample of 
    multiplying a big integer.
.DESCRIPTION
    This script first tries and fails to multiple a pair of large integers. The
    script catches the error and then used BigInteger.Multiply to multiply 
    the two big itegers.
.NOTES
    File Name  : Get-MultiplyBigInteger.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.numerics.biginteger.multiply.aspx
.EXAMPLE
    PSH [C:\foo]: .Get-MultiplyBigInteger.ps1
    Too big for long, try biginteger
    12,193,263,111,263,526,900
#>
# Add System.Numerics namespace
$r=[system.Reflection.Assembly]::LoadWithPartialName("System.Numerics")

# Two big numbers
$number1 = 1234567890
$number2 = 9876543210

# Try normal [long] then catch error and do biginteger
try
{
   [long] $product = $number1 * $number2
}
catch 
{  "Too big for long, try biginteger"
   $product = New-Object System.Numerics.BigInteger
   $product = [System.Numerics.BigInteger]::Multiply($number1, $number2)
   $product.ToString("N0")
}   