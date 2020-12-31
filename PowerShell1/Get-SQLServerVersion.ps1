<#
.SYNOPSIS
    This script displays the versions of SQL Server running on a system
.DESCRIPTION
    This script uses WMI to get the SQLServiceAdvancedProperty class from
    the ComputerManagement namespace to print out the versions. This 
    script is an adaptation of the VBS script on MSDN.
.NOTES
    File Name  : Get-SQLServerVersion.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/ms186353.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-SQLVersion.ps1'
    You are running the following versions of SQL:
    Service Name            Version
    ------------            -------
    MSSQL$MICROSOFT##SSEE   9.3.4035.00
    MSSQL$SQLEXPRESS        9.3.4035.00
#>

##
# Start of script
##

# Get the versions of SQL from WMI
$Versions = Get-WmiObject -Namespace root\Microsoft\SQLServer\computerManagement -Class SqlServiceAdvancedProperty | where {$_.SqlServiceType -eq 1 -and $_.PropertyName -eq "VERSION"}

# Now display results
"You are running the following versions of SQL:"
"Service Name            Version"
"------------            -------"
foreach ($version in $versions) {
"{0} `t{1}" -f $version.servicename,$version.propertystrvalue
}
#End of script