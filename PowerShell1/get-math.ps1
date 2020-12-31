<#
.SYNOPSIS
   Illustrates system.math static methods using PowerShell    
.DESCRIPTION
    This script uses some of the static methods of system.math
	including ABS, ACOS, ASI, TAN and some others.
.NOTES
    File Name  : Get-math.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
   PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Math\get-math.ps1'
    Absolute Value of -32346.92 is 32346.92
    Absolute Value of 32346.92 is 32346.92
    ACOS of 0.837 is 0.579018741999706
    ACOS of 100 is NaN
    ASIN of 0.837 is 0.99177758479519
    ATAN of 0.837 is 0.696898312110739
    2147483647 times 2147483647 is: 4611686014132420609
    Ceiling of 42.69 is 43
    COS of 42 is -0.399985314988351
    COSH of 42 is 8.69637470760251E+17
    1234 divided by 5678: remainder 0
    e**-23.2 is 8.4017164388589E-11
    Floor of 42.69 is 42
#>

##
# Start of Script
##

# ABS - Absolute Value
$x = -32346.92
$y = 32346.92
"Absolute Value of {0} is {1}" -f $x, [system.math]::abs($x)
"Absolute Value of {0} is {1}" -f $y, [system.math]::abs($y)

# ACOS - ACosine
[double] $d = .837
"ACOS of {0} is {1}" -f $d, [system.math]::acos($d)
# Note odd output if value >1 (or < -1)!
[double] $err = 100
"ACOS of {0} is {1}" -f $err, [system.math]::acos($err)

# ASIN - ASine
[double] $d = .837
"ASIN of {0} is {1}" -f $d, [system.math]::asin($d)

# ATAN - ATangent
[double] $d = .837
"ATAN of {0} is {1}" -f $d, [system.math]::atan($d)

# Bigmul - Big multiply
[int32] $i1 = [system.int32]::Maxvalue
[int32] $i2 = [system.int32]::Maxvalue
[long]  $r = [system.math]::bigmul($i1, $i2)
"{0} times {1} is: {2}" -f $i1,$i2,$r

# Ceiling - next largest whole integer
[double] $x = 42.69
$c = [system.math]::ceiling($x)
"Ceiling of {0} is {1}" -f $x, $c

# COS - Cosine
[double] $d = 42
"COS of {0} is {1}" -f $d, [system.math]::cos($d)

# COSH - Hyperbolic Cosine
[double] $d = 42
"COSH of {0} is {1}" -f $d, [system.math]::cosh($d)

# DIVREM - calculate quotient and remainder
[int32] $i1 = 1234
[int32] $i2 = 5678
[int32] $i3 = 0
$r = [system.math]::divrem($i1,$i2,[ref] $i3)
"{0} divided by {1}: remainder {2}" -f $i1, $i2, $r

# EXP - Exponential (e**n)
[double] $power = -23.2
"e**{0} is {1}" -f $power, [system.math]::exp($power)

# Floor
[double] $x = 42.69
$c = [system.math]::floor($x)
"Floor of {0} is {1}" -f $x, $c
# End of Script