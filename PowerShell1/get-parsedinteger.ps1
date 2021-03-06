<#
.SYNOPSIS
    This script parses several strings into integers, where possible. 
.DESCRIPTION
    This script uses the TryParse method on [Int32] to attempt
    to parse a string into a number and writes the results. This script
    is a recoded MSDN sample using PowerShell
.NOTES
    File Name  : Get-ParsedInt32.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
        http://msdn.microsoft.com/en-us/library/f02979c7.aspx
.EXAMPLE
    Psh[C:\foo]> .\get-parsedinteger.ps1
Attempted conversion of '' failed.
Converted '160519' to 160519.
Attempted conversion of '9432.0' failed.
Attempted conversion of '16,667' failed.
Converted '   -322   ' to -322.
Converted '+4302' to 4302.
Attempted conversion of '(100);' failed.
Attempted conversion of '01FA' failed.    
#>

# Define function to parse a string to integer
Function TryToParse {
# Parameter to parse into a number
Param ([string] $value)
# Define $number and try the parse
[int] $number = 0
$result = [System.Int32]::TryParse($value, [ref] $number);
if ($result)  {
      "Converted '{0}' to {1}." -f $value, $number 
              }
      else    {
        if ($value -eq $null) {$value = ""} 
       "Attempted conversion of '{0}' failed." -f $value
              }
}

# Now call the function to see if the string will parse
TryToParse($null)
TryToParse("160519");
TryToParse("9432.0");
TryToParse("16,667");
TryToParse("   -322   ");
TryToParse("+4302");
TryToParse("(100);");
TryToParse("01FA");