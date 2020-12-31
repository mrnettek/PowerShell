<#
.SYNOPSIS
    Gets the names of the systems holding the 5 FSMO holders
.DESCRIPTION
    Uses system.ds.ad.forest and system.ds.ad.domain to get this info
	Runs on a domain joined machine.
.NOTES
    File Name  : Get-FSMOHolders.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.HISTORY
    First published : 17.12.2008
	Updated         : 8.8.2009 - validated for Verstion 2.	
.LINK
    This script posted to: 
        http://pshscripts.blogspot.com/2008/12/get-fsmoholdersps1.html
.EXAMPLE
    PS c:\> .\Get-FSMOHOlders.ps1
#>

##
# Start of Script
##

# Get host,forest and domain details
$Hostname   = hostname
$forest     = [DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
$domain     = [DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain()

#Display FSMOs, forest wide first
"For Host {0}" -f $hostname
"In Forest {0}, forest masters are: " -f $for.name
"Schema master          : {0}" -f $forest.SchemaRoleOwner.Name
"Domain Master          : {0}" -f $forest.NamingRoleOwner.Name
""
# Current domain
"In domain {0}, domain masters are:" -f $dom.Name
"PDC Master            : {0}" -f $domain.PdcRoleOwner
"Infrastructure Master : {0}" -f $domain.InfrastructureRoleOwner
"RID Master            : {0}" -f $domain.RidRoleOwner
# End of Script