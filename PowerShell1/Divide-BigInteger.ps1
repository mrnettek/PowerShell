<#
.SYNOPSIS
    This script divides big integers using .NET Framework.
.DESCRIPTION
    This script reimplements an MSDN Sample script using powershell. The
    script creates a dividor and an arry of dividends, then performs 
    division operations several ways.
.NOTES
    File Name  : Divide-BigInteger.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
	             .NET Framework 4.0 or higher
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.numerics.biginteger.divide.aspx
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled7.ps1'
    Dividend: 680,564,693,277,057,719,623,408,366,969,033,850,880
    Divisor:  85,070,591,730,234,615,847,396,907,784,232,501,249
    Results:
       Using Divide method:     7
       Using Division operator: 7
       Using DivRem method:     7, remainder 85,070,551,165,415,408,691,630,012,479,406,342,137

    Dividend: 90,612,345,123,875,509,091,827,560,007,100,099
    Divisor:  85,070,591,730,234,615,847,396,907,784,232,501,249
    Results:
       Using Divide method:     0
       Using Division operator: 0
       Using DivRem method:     0, remainder 90,612,345,123,875,509,091,827,560,007,100,099
    
    Dividend: 1
    Divisor:  85,070,591,730,234,615,847,396,907,784,232,501,249
    Results:
       Using Divide method:     0
       Using Division operator: 0
       Using DivRem method:     0, remainder 1
    
    Dividend: 19,807,040,619,342,712,359,383,728,129
    Divisor:  85,070,591,730,234,615,847,396,907,784,232,501,249
    Results:
       Using Divide method:     0
       Using Division operator: 0
       Using DivRem method:     0, remainder 19,807,040,619,342,712,359,383,728,129
 
    Dividend: 85,070,591,730,234,615,847,396,907,784,232,501,250
    Divisor:  85,070,591,730,234,615,847,396,907,784,232,501,249
    Results: 
       Using Divide method:     1
       Using Division operator: 1
       Using DivRem method:     1, remainder 1
 
#>

# Add namespace
$r = [system.Reflection.Assembly]::LoadWithPartialName("System.Numerics")

#Create a big integer divisor and an array of dividends
$divisor = [system.numerics.BigInteger]::pow([Int64]::MaxValue, 2)
$dividends = @()
$dividends += [system.numerics.BigInteger]::Multiply(([system.numerics.BigInteger] [system.Single]::MaxValue), 2)
$dividends += [system.numerics.BigInteger]::Parse("90612345123875509091827560007100099") 
$dividends += [system.numerics.BigInteger]::One
$dividends += [system.numerics.BigInteger]::Multiply([Int32]::MaxValue, [Int64]::MaxValue)
$dividends += $divisor + [system.numerics.BigInteger]::One 
 
#Divide each dividend by divisor in three different ways
foreach ($dividend in $dividends) {
    "Dividend: {0:N0}" -f $dividend
    "Divisor:  {0:N0}" -f $divisor
    "Results:"
    "   Using Divide method:     {0:N0}" -f  [system.Numerics.BigInteger]::Divide($dividend, $divisor)
    "   Using Division operator: {0:N0}" -f ($dividend/$divisor)
	$remainder = [system.Numerics.BigInteger]::Zero
	$quotient = [system.numerics.BigInteger]::DivRem($dividend, $divisor, [ref] $remainder)
    "   Using DivRem method:     {0:N0}, remainder {1:N0}" -f $quotient, $remainder
	""
}		 