<#
.SYNOPSIS
    Prints out the values of the ForestMode Enum
.DESCRIPTION
    This script use Enum's GetValues method to display the value of this enum.
	Then the script checks an enum value.
.NOTES
    File Name  : Get-ForestModeEnumValues.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\foo> .\Get-ForestModeEnumValues.ps1
	System.Net.DirectoryServices.ActiveDirectory.Forest mode enum has 4 possible values:
    Value 1: Windows2000Forest
    Value 2: Windows2003InterimForest
    Value 3: Windows2003Forest
    Value 4: Windows2008Forest

    $ToCheck is Windows2008Forest
#>

##
#  Start of script
##


# Get values for System.DirectoryServices.ActiveDirectory.Forestmode enum
$enums=[enum]::GetValues([System.DirectoryServices.ActiveDirectory.ForestMode])

# Display values
"System.Net.DirectoryServices.ActiveDirectory.Forest mode enum has {0} possible values:" -f $enums.count
$i=1
$enums | %{"Value {0}: {1}" -f $i,$_.tostring();$i++}
"" 

# Checking against an enum value 
$ToCheck = "Windows2008Forest"
if ($ToCheck -eq  [System.DirectoryServices.ActiveDirectory.ForestMode]::Windows2008Forest) {
"`$ToCheck is Windows2008Forest"
	}
else {
    "`$ToCheck is NOT Windows2008Forest"
	}
# End of Script