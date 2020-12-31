<#
.SYNOPSIS
    This script uses SQL Server Server SMO objects to display server information.
.DESCRIPTION
    This script first loads the SMO assembly and then creates a server object.
    The script then prints basic server information plus details of databases and
    tables.
.NOTES
    File Name  : Get-SQLServer.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	   http://pshscripts.blogspot.com/2010/05/get-sqlserverps1.html 
    MSDN Sample posted at:
       http://msdn.microsoft.com/en-us/library/microsr.management.smo.server.aspx
.EXAMPLE
    PS C:\Foo> .\Get-SQLServer.ps1'
    Server Details
    --------------
    Server Name:      SQL1
    Product:          Microsoft SQL Server
    Edition:          Enterprise Edition (64-bit)
    Type:             Singleton
    Version:          10.0.2531
    Version String:   10.0.2531.0
    Service Account:  .\sql
 
    Databases and Table
    -------------------
    master (contains 6 tables)
    model (contains 0 tables)
    msdb (contains 102 tables)
    PSMC (contains 1 tables)
    tempdb (contains 0 tables)
#>

##
# Start of Script
##

# Load the SMO Assembly
$null = [system.Reflection.Assembly]::LoadWithPartialName("Microsoft.SQLServer.Smo")
 
# Create Server Object
$server = New-Object Microsoft.SqlServer.Management.Smo.Server "SQL1"
 
# Display key properties 
"Server Details"
"--------------"
"Server Name:      {0}" -f $Server.Netname
"Product:          {0}" -f $Server.Product
"Edition:          {0}" -f $Server.Edition
"Type:             {0}" -f $Server.ServerType
"Version:          {0}" -f $Server.Version
"Version String:   {0}" -f $Server.Versionstring
"Service Account:  {0}" -f $Server.ServiceAccount
""
 
# Display Database/Table info
"Databases and Table"
"-------------------"
foreach ($database in $server.Databases) {
"{0} (contains {1} tables)" -f $Database.name, $Database.Tables.Count
}
