<#
.SYNOPSIS
    Shows use of GetCurrentForest to return information about the forest  
.DESCRIPTION
    This script used .NET to return name of forest. 
.NOTES
    File Name  : .\Get-Forest.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Get-Forest.ps1
	You are connected to the Cookham forest
#>

##
#  Start of script
##

# Get Forest name
$forest = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest() 

# Display info
"You are connected to the {0} forest" -f $forest.name 
