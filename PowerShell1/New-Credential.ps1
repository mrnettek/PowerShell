<#
.SYNOPSIS
   A function to create a credential object from script.
.DESCRIPTION
   Enables you to create a credential objects from stored details.
.NOTES
    File Name  : New-Credential.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://pshscripts.blogspot.com/2011/03/new-credentialps1.html
.PARAMETER UserId
   The userid in the form of "domain\user"
.PARAMETER Password
   The password for this user
.EXAMPLE
   New-Credential contoso\administrator  Pa$$w0rd
#>

function New-Credential {
param (
[string] $Userid,
[string] $Pwd
)
# Create the credential
$spwd = ConvertTo-SecureString -AsPlainText $pwd -Force 
$cred = New-Object System.Management.Automation.PSCredential $userid,$spwd
# Now return it to the caller
return $cred
}

# Call the function to demostrate example
New-Credential "contoso\administrator" "Pa$$w0rd"