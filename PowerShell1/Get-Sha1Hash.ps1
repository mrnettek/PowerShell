<#
.SYNOPSIS
    This script uses the SHA1 Crypto Provider to hash a string
.DESCRIPTION
    This script creates 2 strings, and a SHA1 Crypto Provider.
    The script then hashes the strings and displays the results. 
.NOTES
    File Name  : Get-Sha1Hash.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
        http://msdn.microsoft.com/en-us/library/system.security.cryptography.sha1cryptoserviceprovider.aspx
    Posted to TechEd Sample Gallery at:
        http://gallery.technet.microsoft.com/ScriptCenter/en-us/0a442c57-4ca5-46fd-966c-8091718a5cd8
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Security.Crpytography\Get-Sha1Hash.ps1'
    Hashing     : This is a string to hash
    Results in  : 6725ff4fa861a7a
    Hashing     : this is a string to hash
    Results in  : e25afd2401f2f1c5
#>


# Create Input Data
$enc = [system.Text.Encoding]::ASCII
$string1 = "This is a string to hash"
$string2 = "this is a string to hash"
$data1 = $enc.GetBytes($string1)
$data2 = $enc.GetBytes($string2)

# Create a New SHA1 Crypto Provider
$sha = New-Object System.Security.Cryptography.SHA1CryptoServiceProvider

# Now hash that
$result1 = $sha.ComputeHash($data1)
"Hashing     : {0}" -f $string1
"Results in  : {0}" -f [system.BitConverter]::ToUint64($result1,0).tostring("x")


$result2 = $sha.ComputeHash($data2)
"Hashing     : {0}" -f $string2
"Results in  : {0}" -f [system.BitConverter]::ToUint64($result2,0).tostring("x")