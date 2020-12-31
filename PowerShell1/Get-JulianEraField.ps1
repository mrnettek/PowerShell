<#
.Synopsis
    Displays the value of the [System.Globalzation.JulianCalendar}::JulianEra field
.Description
   This script retreives the JulianEra field and displays it, using the .NET class
   System.Globalization.JulianCalendar.
.NOTES
    File Name  : Get-JulianEraField.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script Posted to:
	http://www.pshscripts.blogspot.com
	MSDN Sample at:
	http://msdn.microsoft.com/en-us/library/system.globalization.juliancalendar.julianera.aspx
.Example
    PS C:\foo> .\Get-JulianEraField.ps1
    The JulianEra Field has a value of: 1
#>

###
# Start of Script
##

# Get the value
$era = [system.Globalization.JulianCalendar]::JulianEra

# Format it
"The JulianEra field has a value of: {0}" -f $era
