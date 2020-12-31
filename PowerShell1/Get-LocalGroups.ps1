<#
.SYNOPSIS
    Gets local groups on a computer.
.DESCRIPTION
    This script uses Win32_Group to get the local groups
    on a system then displays those groups.
.NOTES
    File Name  : Get-LocalGroups.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    PowerShell sample at:
    http://www.pshscripts.blogspot.com
	MSDN Sample at:
	http://msdn.microsoft.com/en-us/library/aa394586
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\WMI\Get-LocalGroups.PS1'

    Name                                            Sid                                          SidType Status
    ----                                            ---                                          ------- ------
    Administrators                                  S-1-5-32-544                                       4 OK
    Backup Operators                                S-1-5-32-551                                       4 OK
    Certificate Service DCOM Access                 S-1-5-32-574                                       4 OK
    Cryptographic Operators                         S-1-5-32-569                                       4 OK
    Distributed COM Users                           S-1-5-32-562                                       4 OK
    Event Log Readers                               S-1-5-32-573                                       4 OK
    Guests                                          S-1-5-32-546                                       4 OK
    IIS_IUSRS                                       S-1-5-32-568                                       4 OK
    Network Configuration Operators                 S-1-5-32-556                                       4 OK
    Performance Log Users                           S-1-5-32-559                                       4 OK
    Performance Monitor Users                       S-1-5-32-558                                       4 OK
    Power Users                                     S-1-5-32-547                                       4 OK
    Print Operators                                 S-1-5-32-550                                       4 OK
    Remote Desktop Users                            S-1-5-32-555                                       4 OK
    Replicator                                      S-1-5-32-552                                       4 OK
    Users                                           S-1-5-32-545                                       4 OK
    SQLServer2005MSFTEUser$COOKHAM8$MICROSOFT##SSEE S-1-5-21-2376918343-887200126-108515810-1005       4 OK
    SQLServer2005MSSQLServerADHelperUser$COOKHAM8   S-1-5-21-2376918343-887200126-108515810-1002       4 OK
    SQLServer2005MSSQLUser$COOKHAM8$MICROSOFT##SSEE S-1-5-21-2376918343-887200126-108515810-1004       4 OK
    SQLServer2005MSSQLUser$COOKHAM8$SQLEXPRESS      S-1-5-21-2376918343-887200126-108515810-1003       4 OK
    SQLServer2005SQLBrowserUser$COOKHAM8            S-1-5-21-2376918343-887200126-108515810-1001       4 OK
#>

##
# Start of script
##

# Get Win32 Group Accounts
$Accts = Get-WMIObject Win32_Group | where {$_.LocalAccount}

# Display them
$accts | ft Name, Sid, SidType, Status -autosize
# End of script