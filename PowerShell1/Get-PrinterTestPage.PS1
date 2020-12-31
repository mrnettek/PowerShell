<#
.SYNOPSIS
    This script uses WMI to print a test page
    all printers on this system
.DESCRIPTION
    This script is an MSDN sample,using PowerShell. It first
    gets all the printrs installed, prints out details then
    tries to print a test page.
    
    The script also checks for printers know  to not work well, and avoids using them!
.NOTES
    File Name  : Get-PrinterTestPage.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Sample posted to:
	http://www.pshscripts.blogspot.com
	Original MSDN sample at:
	http://msdn.microsoft.com/en-us/library/aa392757(VS.85).aspx
.EXAMPLE
    PSH [C:\foo]: .Get-PrinterTestPage.ps1'
	4 Printers defined on this system
    Printer share name: \
    Printer Port      : C:\ProgramData\TechSmith\SnagIt 9\PrinterPortFile
    Printer share name: \Phaser PS
    Printer Port      : X_10.10.1.117
    Printer share name: \
    Printer Port      : XPSPort:
    Printer share name: \\SLT-PC\officejet
    Printer Port      : USB002
	
    Printing test page for printer: SnagIt 9
    Not printing a test page for this printer
    Printing test page for printer: Phaser PS
    Result                        : 0
    Printing test page for printer: Microsoft XPS Document Writer
    Not printing a test page for this printer
    Printing test page for printer: \\JerryGarcia\HP Officejet Pro L7400 Series
	Result                        : 0
    #>

###
# Start of Script
###
 
# Get Printer Objects for this computer from WMI
$printers = Get-WmiObject -Class Win32_Printer
# Display printers
"{0} Printers defined on this system" -f $printers.count

# For printers, display printer details
foreach ($printer in $printers) {
"Printer share name: {0}\{1}" -f $printer.servername, $printer.sharename
"Printer Port      : {0}    " -f $printer.PortName  
}
""

# Now Print a test page for each printer
foreach ($printer in $printers) {
"Printing test page for printer: {0}" -f $printer.name

# avoid issue with XPS Printers
if ($printer.DriverName -match "XPS" -or $printer.DriverName -match "SnagIt")  {
"Not printing a test page for this printer"
}
else {
$Result = $printer.PrintTestPage()
"Result                        : {0}" -f $Result.ReturnValue
}
}
# End of script