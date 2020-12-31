<#
.SYNOPSIS
    This script gets all the computers in a domain and then 
    displays bios details for each one.
.DESCRIPTION
    This script uses the Active Directory module to get
    all computers. Then it enumerates this set and uses WMI
    to get bios information from each system. Note that 
    script does not handle WMI errors.
.NOTES
    File Name  : Get-Bios.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/06/get-biosps1.html
.EXAMPLE
    PS [C:\FOO] .\Get-Bios.ps1
    Machine:           DC1.reskit.org
    Bios Name          BIOS Date: 03/19/09 22:51:32  Ver: 09.00.04
    Bios Manufacturer  American Megatrends Inc.
    Bios Version       
    Bios Serial Number 3678-9986-1198-6272-1712-1835-12
 
    Machine:           SQL1.reskit.org
    Bios Name          BIOS Date: 03/19/09 22:51:32  Ver: 09.00.04
    Bios Manufacturer  American Megatrends Inc.
    Bios Version       
    Bios Serial Number 4769-0987-7689-7711-9784-0733-29
   <etc - rest snipped for brevity>
#>

##
# Start of Script
##

# Import the AD module
Import-Module activedirectory

# Get the computers
$Computers = Get-ADComputer -Filter *
 
# Visit each one and get some output
# NB: error handling should be added in for production use
foreach ($Computer in $Computers){
	$bios = GWMI win32_bios -computer $computer.DnsHostName
	"Machine:           {0}" -f $Computer.DnsHostName
	"Bios Name          {0}" -f $Bios.Name
	"Bios Manufacturer  {0}" -f $Bios.Manufacturer
	"Bios Version       {0}" -f $Bios.SmbbiosBiosVersion
	"Bios Serial Number {0}" -f $Bios.SerialNumber
	""
}
