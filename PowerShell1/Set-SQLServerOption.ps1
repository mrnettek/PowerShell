<#
.SYNOPSIS
    This script sets options on a SQL Server using SMO
.DESCRIPTION
    This script first loads the SQL cmdlet and provider snapin and
    displays information about the SQL Server. The script then sets
    two server options and alters to database to persist the changes.
.NOTES
    File Name  : Set-SQLServerOption.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH:[C:\Foo]: .\Set-SQLServerOption.ps1
	Network Name   SQL1
    Instance Name  
    OS Version     6.1 (7600)
    SQL Edition    Enterprise Edition (64-bit)
    Settings State Existing
#>

# Load the SMO Objects
$null = Add-PSSnapIn SqlServerCmdletSnapin100   -erroraction silentlycontinue
$null = Add-PSSnapIn SqlServerProviderSnapin100 -erroraction silentlycontinue

# Set the path context to the local, default instance of SQL Server.
CD sqlserver:\sql\localhost\
$srv = get-item default

# Display information about the instance of SQL Server and settings state
"Network Name   {0}"  -f $srv.NetName
"Instance Name  {0}"  -f $srv.InstanceName
"OS Version     {0}"  -f $srv.Information.OSVersion
"SQL Edition    {0}"  -f $srv.Edition
"Settings State {0}"  -f $srv.Settings.State.ToString()

# Modify LoginMode settings
$srv.Settings.LoginMode = [Microsoft.SqlServer.Management.SMO.ServerLoginMode]::Integrated

# Modify settings specific to the current connection in UserOptions
$srv.UserOptions.AbortOnArithmeticErrors = $true

# Run the Alter method to make the changes on the instance of SQL Server
$srv.Alter()