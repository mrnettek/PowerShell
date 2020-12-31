<#
.SYNOPSIS
    This script displays the CA roles of the caller
.DESCRIPTION
    This script instantiates the CA COM object, gets
    the allowed roles, and displays them. This script
    also shows use of Bitwise And operations, typical 
    when using output from API calls. Based on an earlier
    script by Vadims Podans.
.NOTES
    File Name  : Get-CARolesofCaller.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/aa383243%28VS.85%29.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-CARolesOfCaller.ps1'
    You have the following rights on this CA: Cookham11\Cookham-CookhamCA
        CA administrator
        CA officer
        CA auditor
        CA backup
        Enrollment access
#>
# Instantiate the COM object
$CertAdmin = New-Object -com "CertificateAuthority.Admin.1"
 
# Now get the roles assigned to me
$CA = "Cookham11\Cookham-CookhamCA"
$MyRoles = $CertAdmin.GetMyRoles([string] $CA)

#Display Granular Rights
"You have the following rights on this CA: {0}" -f $CA
 switch ($MyRoles){
{$MyRoles -band 1}     {"    CA administrator"}
{$MyRoles -band 2}     {"    CA officer"}
{$MyRoles -band 4}     {"    CA auditor"}
{$MyRoles -band 8}     {"    CA backup"}
{$MyRoles -band 256}   {"    CA Read access"}
{$MyRoles -band 512}   {"    Enrollment access"}
default                {"    No CA Access"}
}