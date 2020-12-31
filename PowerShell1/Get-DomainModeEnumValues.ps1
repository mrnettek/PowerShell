<#
.SYNOPSIS
    Prints out the values of the DomainMode Enum
.DESCRIPTION
    This script use Enum's GetValues method to display the value of this enum.
	Then the script checks an enum value.
.NOTES
    File Name  : Get-DomainModeEnumValues.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [D:\foo]: .\Get-DomainModeEnumValues.ps1
    System.Net.DirectoryServices.ActiveDirectory.DomainMode enum has 5 possible values:
    Value 1: Windows2000MixedDomain
    Value 2: Windows2000NativeDomain
    Value 3: Windows2003InterimDomain
    Value 4: Windows2003Domain
    Value 5: Windows2008Domain

    $ToCheck is Windows2008Domain
#>


# Get Enum
$enums=[enum]::GetValues([System.DirectoryServices.ActiveDirectory.DomainMode])

# Display values
"System.Net.DirectoryServices.ActiveDirectory.DomainMode enum has {0} possible values:" -f $enums.count
$i=1
$enums | %{"Value {0}: {1}" -f $i,$_.tostring();$i++}
"" 

# Checking against an enum value 
$ToCheck = "Windows2008Domain"
if ($ToCheck -eq  [System.DirectoryServices.ActiveDirectory.DomainMode]::Windows2008Domain) {
"`$ToCheck is Windows2008Domain"
	}
else {
    "`$ToCheck is NOT Windows2008Domain"
	}