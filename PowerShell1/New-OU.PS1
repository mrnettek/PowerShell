<#
.SYNOPSIS
    This script uses ADSI to add a new OU to a domain.
.DESCRIPTION
    This script creates a pointer to the domain, then
    uses the Create method to create a new OU under
    the root of the domain.
.NOTES
    File Name  : New-OU.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.HISTORY
    First published : 6.8.2009
	Updated         : 8.8.2009 - validated for Verstion 2.
                               - added link references

.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2009/08/new-oups1.html
.EXAMPLE
    PSH [C:\foo]: .\New-OU.PS1
    Created OU: PowerShell
    
	distinguishedName : {OU=PowerShell,DC=cookham,DC=net}
    Path              : LDAP://ou=PowerShell,dc=Cookham,dc=Net
#>
##
# Start of Script
##

#Set variables
$OuName = “PowerShell”
$Domain = [ADSI]“LDAP://dc=Cookham,dc=Net”

# Create the OU
$Ou = $Domain.Create(”OrganizationalUnit”, “ou=” + $OuName)
$Ou.SetInfo()

# Display results
"Created OU: {0}" -f $OUName
$OU
# End of Script