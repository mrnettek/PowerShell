<#
.SYNOPSIS
    Demonstrates Decimal arithmetic.
.DESCRIPTION
    This script Creates two decimals, then multiplies them and
	then displays them. 
.NOTES
    File Name  : get-decimal1.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script Posted to:
	http://www.pshscripts.blogspot.com
	Posted on MSDN:
	http://msdn.microsoft.com/en-us/library/system.decimal.aspx
.EXAMPLE
    PS c:\foo> .\get-decimal1.ps1
	$d1 is of type: Decimal
    $d2 is of type: Decimal
    $d1 (12.1) multiplied by $d2 (12.2) equals: 146.41
    $d3 is of type: Decimal
#>

##
#  Start of script
##
 
# Create decimal numbers ($d1, $d2)
[decimal] $d1 = 12.1
[decimal] $d2 = 12.2

# Create product
$d3 = $d1*$d1

# print details
"`$d1 is of type: {0}" -f $d1.gettype().name
"`$d2 is of type: {0}" -f $d2.gettype().name
"`$d1 ({0}) multiplied by `$d2 ({1}) equals: {2}" -f $d1,$d2,$d3
"`$d3 is of type: {0}" -f $d3.gettype().name
# End of script