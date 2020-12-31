<#
.SYNOPSIS
    Multiplies two large int32 values
.DESCRIPTION
    This script used BigMul method to multiply two
	large integers
.NOTES
    File Name  : multiply-bignumber.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\multiply-bignumber.ps1
    Calculate the product of two Int32 values:
    2147483647 * 2147483647 = 4611686014132420609
#>

##
# Start of script
##

$int1 = [system.Int32]::MaxValue
$int2 = [system.Int32]::MaxValue

$longResult = [system.Math]::BigMul($int1, $int2);
"Calculate the product of two Int32 values:"
"{0} * {1} = {2}" -f $int1, $int2, $longResult