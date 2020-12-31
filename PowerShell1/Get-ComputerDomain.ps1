<#
.SYNOPSIS
    This script uses WMI to get the name of a computer's domain then displays the name.
.DESCRIPTION
    This script is a re-write of an MSDN sample, using PowerShell. 
.NOTES
    File Name  : Get-ComputerDomain.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/aa394586%28VS.85%29.aspx/
.EXAMPLE
    PSH [C:\foo]: .\Get-ComputerDomain.ps1
    System Name: WIN7
    Domain:      cookham.net
.EXAMPLE
    Psh[Cookham8]> .\Get-ComputerDomain.ps1 cookham2
    System Name: COOKHAM2
    Domain:      cookham.net
.PARAMETER comp
    The name of the computer whose domain name to be displayed. Default is localhost.
#>

# Parameter block
param (
$comp = "."
)

# Get WMI Object
$system = Get-WmiObject -class win32_computersystem -ComputerName $comp

# Display results
"System Name: {0}" -f $System.Name
"Domain:      {0}" -f $System.Domain