<#
.SYNOPSIS
    This script uses the SHA1 Crypto Provider to hash a file
.DESCRIPTION
    This script uses SHA1 Cryptoprovider to hash a file and print the hash. A second
    hash is created of the same file, but with a space added. The file I picked is a
    large text file I keep in c:\foo for uses like this!
.NOTES
    File Name  : Get-Sha1HashFile.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    Posted to TechEd Sample Gallery at:

.EXAMPLE
    PSH [C:\foo]: .\Get-Sha1HashFile.ps1
    Hashing     : C:\foo\gd.txt
    Results in  : 760bb67356560232
    Hashing     :  C:\foo\gd.txt + space
    Results in  : 4f7b4902168bba7d
	
#>

# Create Input Data
$file       = (ls c:\foo\*.txt | sort -descending length)[0] # get largest file
$filestr    = Get-Content $file
$filebytes1 = [System.Text.UnicodeEncoding]::Unicode.getbytes($files)
$filebytes2 = [System.Text.UnicodeEncoding]::Unicode.getbytes($files+" ")

# Create a New SHA1 Crypto Provider
$sha = New-Object System.Security.Cryptography.SHA1CryptoServiceProvider

# Now hash that
$result1 = $sha.ComputeHash($filebytes1)
"Hashing     : {0}" -f $file.FullName
"Results in  : {0}" -f [system.BitConverter]::ToUint64($result1,0).tostring("x")

$result2 = $sha.ComputeHash($filebytes2)
"Hashing     : {0}" -f " $($file.FullName) + space"
"Results in  : {0}" -f [system.BitConverter]::ToUint64($result2,0).tostring("x")
