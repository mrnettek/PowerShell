<#
.SYNOPSIS
     Shows how to use regular expressions to test a string
.DESCRIPTION
    This script tests a set of strings to determine they are a 
    currency value.
.NOTES
    File Name  : Get-RegexTest.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\get-regextest.ps1
    -42          is a currency value
    19.99        is a currency value
    0.001        is not a currency value
    100 USD      is not a currency value
    .34          is not a currency value
    0.34         is a currency value
    1,052.21     is not a currency value
    Jerry Garcia is not a currency value
#>

## 
# Start of script
##

# Define a regular expression for currency values.
$rx = New-Object system.text.RegularExpressions.Regex "^-?\d+(\.\d{2})?$"

# Define tests
$tests = "-42", "19.99", "0.001", "100 USD", ".34", "0.34", "1,052.21", "Jerry Garcia"

# Now test and report
foreach ($test in $tests)  {
if ($rx.IsMatch($test)) {
"{0,-12} is a currency value" -f $test
}
else {
"{0,-12} is not a currency value" -f $test
}
} 
# End of script