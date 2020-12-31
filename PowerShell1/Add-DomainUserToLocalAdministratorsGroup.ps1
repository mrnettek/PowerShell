<#
.SYNOPSIS
    Add a domain user to a Local Administrator's group
.DESCRIPTION
    Uses ADSI to discover computer's account database and add the user
	to the local Administrator's group. Also does some basic error checking
	using try/catch.
	Based on http://powershell.com/cs/media/p/380.aspx, with some error checking
.NOTES
    File Name  : Add-DomainUserToLocalAdministatorsGroup.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.HISTORY
    First published : 29.11.08
	Updated         : 8.8.2009 - validated for Verstion 2.
                               - added link references
.LINK
    MSDN Sample posted at: 
        http://msdn.microsoft.com/en-us/library/ms676309(VS.85).aspx
.EXAMPLE
    Left as an exercise for the reader.
.PARAMETER Domain
    The domain name of the user to add to $computers' admin group
.PARAMETER Computer
    The computer to try to add $domain\user into local admins group
.PARAMETER User
    The user you want to make local admin, sans domain name
#>

param (
[Parameter(Position=0, Mandatory=$false,ParameterSetName="PSP1")]
[string] $Domain   = "Cookham" ,     
[Parameter(Position=1, Mandatory=$false,ParameterSetName="PSP1")]
[string] $Computer = "Cookham8",  
[Parameter(Position=2, Mandatory=$false,ParameterSetName="PSP1")]
[string] $User     = "tfl"            
)
# Try to add user to Administrator's group
try {
 $group.Add("WinNT://" + $Domain + "/" + $User)
 "User {0}\{1} added to Administrator's local group in system: {2}" -f $domain,$user, $computer
 }
catch {
 "Error adding user {0}\{1} to Administrator's group on {2}:" -f $domain, $user,$computer
 $Error[0]
 return
} 
""
# Now print results
$computer = [ADSI]("WinNT://" + $Computer + ",computer")
$group = $computer.psbase.children.find("Administrators")
"Group: {0} contains {1} members:" -f $group.Name.Value, $members.Length
$members = $group.psbase.invoke("Members") | %{$_.GetType().InvokeMember("Name",'GetProperty',$null,$_,$null)}
$members
