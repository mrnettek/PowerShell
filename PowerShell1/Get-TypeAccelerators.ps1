<#
.SYNOPSIS
	Gets a list of Type Accelerators in PowerShell and displays them nicely
.DESCRIPTION
    This script is based on Osin's blog article and uses the TypeAccelerator
	class to return the type accellerators contained in PowerShell
.NOTES
    Additional Notes, eg
	File Name  : get-typeaccelerator.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : Version 2, CTP3
.LINK
    Original article:
	http://www.nivot.org/2008/12/25/ListOfTypeAcceleratorsForPowerShellCTP3.aspx
	Script Repository
	http://www.pshscripts.blogspot.com
#>

###
#   Start of script
###

([type]::GetType("System.Management.Automation.TypeAccelerators"))::Get.GetEnumerator() |  
    Select @{Name="Name"; expression={$_.key}},  
           @{name="Type"; expression={$_.value}} | Sort name | Format-Table -Autosize
# End of script		   