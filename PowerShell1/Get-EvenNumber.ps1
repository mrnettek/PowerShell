<#
.SYNOPSIS
    Detects and reports on even numbers using the Modulo operator (%)    
.DESCRIPTION
    Takes a pipeline of values and tells you the numbers that are are even 
    integers. PowerShell detects non-integers.  At the end, this function
    tells you how many numbers were processed and how many were even. Non-Inteers
    are not reported.
.PARAMETER number
    One or more integers - values can come from the pipeline as well   
.NOTES
    File Name  : Get-EvenNumber.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script posted to:
	http://www.pshscripts.blogspot.com
    Updates Andy Schneider's example at
    http://get-powershell.com/2008/12/23/industrial-strength-functions-in-powershell-v2-ctp-3/
.EXAMPLE
    1..10 | Get-EvenNumber
.EXAMPLE
    1,2,3,4,"foo" | get-EvenNumber
    (Generates an error)

## 
# Start of Script
##

function Get-EvenNumber {
param (
 [Parameter(Position=0,  Mandatory=$true, ValueFromPipeline=$true, HelpMessage="Please type a integer")]
 [Alias("integer")] [int32]
 $number
)
# Begin block - just type out a greeting and initialise
begin {"Begining of Pipeline"; 
       $i=$j=0
}
process {
 $i++ 
 if (($number % 2) -eq 0) {"$number is even"; $j++}
}
end {
"End of Pipeline"; 
"{0} integers processed" -f $i; 
"{0} were even" -f $j
}
}1