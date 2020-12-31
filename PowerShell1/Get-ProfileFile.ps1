<#
.SYNOPSIS
    This script gets the details of the PowerShell profile files related
    to a given host.
.DESCRIPTION
    This script gets the 4 script file names from the $profile variable and
    creates a custom object containing the name and path or each profile, and
    whether that profile actually exists.
.NOTES
    File Name  : Get-ProfileFile.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
.EXAMPLE
    [PS] C:\foo:> .\Get-ProfileFile.ps1'
    Name   : AllUsersAllHosts
    Path   : C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1
    Exists : True
    Name   : AllUsersCurrentHosts
    Path   : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1
    Exists : False
    Name   : CurrentUserAllHosts
    Path   : C:\Users\tfl\Documents\WindowsPowerShell\profile.ps1
    Exists : True
    Name   : CurrentUserCurrentHost
    Path   : C:\Users\tfl\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
    Exists : True
#>

## 
# Start of Script
##

$profile | gm *Host* | % { $_.Name } | % {
$rv = @{}; $rv.Name = $_ ;$rv.Path = $profile.$_;
$rv.Exists= (Test-Path $profile.$_);
New-Object PSObject -Property $rv 
} | Format-List 

# End of script