<#
.SYNOPSIS
    This script creates an Excel workbook using PowerShell
.DESCRIPTION
    This script demonstrates manipulating Excell with PowerShell
    and the Excel.Application COM object.
.NOTES
    File Name  : New-ExcelWorkbook.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/03/new-excelworkbookps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/bb211359.aspx
.EXAMPLE
#>
## 
# Start of Script
##
# Then we create and save a sample worksheet
# Create Excel object
$excel = new-object -comobject Excel.Application
   
# Make Excel visible
$excel.visible = $true
  
# Create a new workbook
$workbook = $excel.workbooks.add()

 # The default workbook has three sheets, remove 2
 $S2 = $workbook.sheets | where {$_.name -eq "Sheet2"}
 $s3 = $workbook.sheets | where {$_.name -eq "Sheet3"}
 $s2.delete()
 $s3.delete()
 
# Get sheet and update sheet name
$s1 = $workbook.sheets | where {$_.name -eq 'Sheet1'}
$s1.name = "PowerShell Sample"
  
# Update workook properties
$workbook.author = "Thomas Lee - tfl@psp.co.uk"
$workbook.title = "Excel and PowerShell rock!"
$workbook.subject = "Demonstrating the Power of PowerShell with Excel"
  
# Next update some cells in the worksheet 'PowerShell Sample'
$s1.range("A1:A1").cells="Cell a1"
$s1.range("A2:A2").cells="A2"
$s1.range("b1:b1").cells="Cell B1"
$s1.range("b2:b2").cells="b2"

# now make a sum
$s1.range("E1:E2").cells="Widgets"
$s1.range("E2:E2").cells=2
$s1.range("E3:E3").cells=2
$s1.range("E4:E4").cells=38
$s1.range("D5:D5").cells="Total"
$s1.range("E5:E5").cells.formula = "=sum(e2,E4)"
  
# And save it away:
$s1.saveas("c:\foo\xlsx3.xlsx")
# end of script