<#
.SYNOPSIS
    This script shows how to compare roughy equivalent DateTime values, 
    accepting a small margin of difference when declaring them equal.
.DESCRIPTION
    This script reimplements an MSDN Scample.
.NOTES
    File Name  : Compare-DateTime.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/system.datetime.aspx
.EXAMPLE
    PSH [C:\foo]: .\Compare-DateTime.ps1'
    d1 (9/15/2010 6:16:34 PM) ~= d1 (9/15/2010 6:16:34 PM): True
    d1 (9/15/2010 6:16:34 PM) ~= d2 (9/15/2010 6:16:54 PM): False
    d1 (9/15/2010 6:16:34 PM) ~= d3 (9/15/2010 6:16:14 PM): False
    d1 (9/15/2010 6:16:34 PM) ~= d4 (9/15/2010 6:16:39 PM): True
    d1 (9/15/2010 6:16:34 PM) ~= d5 (9/15/2010 6:16:29 PM): True
    d1 (9/15/2010 6:16:34 PM) ~= d6 (9/15/2010 8:16:54 PM): False
    d1 (9/15/2010 6:16:34 PM) ~= d7 (9/15/2010 8:16:14 PM): False
    d1 (9/15/2010 6:16:34 PM) ~= d8 (9/15/2010 8:16:39 PM): True
    d1 (9/15/2010 6:16:34 PM) ~= d9 (9/15/2010 8:16:29 PM): True    
#>

# Helper Funcion
function RoughlyEquals {
param ($time, 
       $timeWithWindow, 
	   $windowInSeconds, 
	   $frequencyInSeconds)
$delta = ($timeWithWindow - $time).TotalSeconds % $frequencyInSeconds
if ($delta -gt $windowInSeconds)
  {$delta = $frequencyInSeconds - $delta}
return [system.math]::Abs($delta) -lt $windowInSeconds
}

#Main script

$window = 10;
$freq = 60 * 60 * 2; # 2 hours;

$d1 = [System.DateTime]::Now
$d2 = $d1.AddSeconds(2 * $window);
$d3 = $d1.AddSeconds(-2 * $window)
$d4 = $d1.AddSeconds($window / 2)
$d5 = $d1.AddSeconds(-$window / 2)

$d6 = ($d1.AddHours(2)).AddSeconds(2 * $window);
$d7 = ($d1.AddHours(2)).AddSeconds(-2 * $window);
$d8 = ($d1.AddHours(2)).AddSeconds($window / 2);
$d9 = ($d1.AddHours(2)).AddSeconds(-$window / 2);

"d1 ({0}) ~= d1 ({1}): {2}" -f $d1, $d1, $(RoughlyEquals $d1 $d1 $window $freq)
"d1 ({0}) ~= d2 ({1}): {2}" -f $d1, $d2, $(RoughlyEquals $d1 $d2 $window $freq)
"d1 ({0}) ~= d3 ({1}): {2}" -f $d1, $d3, $(RoughlyEquals $d1 $d3 $window $freq)
"d1 ({0}) ~= d4 ({1}): {2}" -f $d1, $d4, $(RoughlyEquals $d1 $d4 $window $freq)
"d1 ({0}) ~= d5 ({1}): {2}" -f $d1, $d5, $(RoughlyEquals $d1 $d5 $window $freq)

"d1 ({0}) ~= d6 ({1}): {2}" -f $d1, $d6, $(RoughlyEquals $d1 $d6 $window $freq)
"d1 ({0}) ~= d7 ({1}): {2}" -f $d1, $d7, $(RoughlyEquals $d1 $d7 $window $freq)
"d1 ({0}) ~= d8 ({1}): {2}" -f $d1, $d8, $(RoughlyEquals $d1 $d8 $window $freq)
"d1 ({0}) ~= d9 ({1}): {2}" -f $d1, $d9, $(RoughlyEquals $d1 $d9 $window $freq )  