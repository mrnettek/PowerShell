<#
.SYNOPSIS
    This script encrpyts then decrypts a byte string
.DESCRIPTION
    This script uses System.Security to encrpyt a byte
    string, then decrypts it.
.NOTES
    File Name  : Protect-ByteArray.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.security.cryptography.protectedmemory.aspx
.EXAMPLE
    PSH [C:\foo]: .Protect-ByteArray.ps1'
    Unencrpyted byte string:
    1
    2
    3
    4
    1
    2
    3
    4
    1
    2
    3
    4
    1
    2
    3
    6
    Encrpyted byte string:
    199
    52
    177
    169
    162
    117
    118
    127
    180
    16
    230
    70
    19
    89
    85
    168
    Unencrpyted byte string:
    1
    2
    3
    4
    1
    2
    3
    4
    1
    2
    3
    4
    1
    2
    3
    6
#>
  
##
# Start of script
##
 
# Load System.Security 
[void] [Reflection.Assembly]::LoadWithPartialName("System.Security")
 
# Create and display a byte string
[byte[]] $Secret =  1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3,6
"Unencrpyted byte string:"
$Secret
 
# now encrypt it and display the encrpyted string
[System.Security.Cryptography.ProtectedMemory]::Protect($Secret,[System.Security.Cryptography.MemoryProtectionScope]::SameLogon)
"Encrpyted byte string:"
$Secret
 
# Now decrypt it and re-display it - it's the same byte array we started with
[System.Security.Cryptography.ProtectedMemory]::UnProtect($Secret,[System.Security.Cryptography.MemoryProtectionScope]::SameLogon)
"Unencrpyted byte string:"
$Secret
#End of Script