<#
.SYNOPSIS
   Creates a Hash of a file and returns the hash  
.DESCRIPTION
    Uses System.Security.Cryptography.HashAlgorithm and members to create the hash
	This scriptimproves on http://pshscripts.blogspot.com/2009/01/get-hashpsm1.html
	by using file stream.
.NOTES
    File Name  : Get-Hash2.PS1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Thanks to the #PowerShell Twitter Posse (PTP) for help figuring out
	the -verbose parameter. And thanksto the PTP for comments on the
	earlier version of this script, which now uses a file stream as
	input to the hash alghorithm.
.LINK
    Posted to         :  http://pshscripts.blogspot.com/2009/01/get-hash2ps1.html
	Based on          :  http://tinyurl.com/aycszb written by Bart De Smet
	An improvement of :  http://pshscripts.blogspot.com/2009/01/get-hashpsm1.html
.PARAMETER Algorithm
    The name of one of the hash Algorithms defined at
	http://msdn.microsoft.com/en-us/library/system.security.cryptography.hashalgorithm.aspx
.PARAMETER File
    The name of a file to provide a hash for.
.PARAMETER Verbose
    if specified, this script will produce chattier output.
.EXAMPLE
    PS C:\foo> ls *.txt | where {!$_.psiscontainer}| c:\foo\Get-Hash2.ps1 sha1 -verbose
	OK, I'll be chatty
    The sha1 hash of file C:\foo\asciifile.txt is: "55055a5c8eeb3af7fa6d426314578ee1d56df016"

    The sha1 hash of file C:\foo\log.txt is: "575f4b35e3cadb9b273095fc463bd43e9a3f5774"

    The sha1 hash of file C:\foo\sites.txt is: "8ce6663cd2b64a513cf18a831843afd98e190764"

    The sha1 hash of file C:\foo\test.txt is: "a2f26abbeeb4e6846e159ba506e07cae5496d458"

    The sha1 hash of file C:\foo\test2.txt is: "9b1baaa9077a3691f8e2685d81ffa24cdd73f71d"

    The sha1 hash of file C:\foo\unicodefile.txt is: "094ef2696d9eb3374e657eb7c227ff4c36cd0cb9"
.EXAMPLE
    PS C:\foo> ls *.txt | where {!$_.psiscontainer}| c:\foo\Get-Hash2.ps1 sha1
    55055a5c8eeb3af7fa6d426314578ee1d56df016
    575f4b35e3cadb9b273095fc463bd43e9a3f5774
    8ce6663cd2b64a513cf18a831843afd98e190764
    a2f26abbeeb4e6846e159ba506e07cae5496d458
    9b1baaa9077a3691f8e2685d81ffa24cdd73f71d
    094ef2696d9eb3374e657eb7c227ff4c36cd0cb9
.EXAMPLE
    PS C:\foo> Get-Hash  md5 asciifile.txt -verbose
    OK, I'll be chatty
    The md5 hash of file c:\foo\asciifile.txt is: "06f51e7bfced5c0623eec5f72e0999d6"
.EXAMPLE
    PS C:\foo> .\get-hash2 md5 c:\foo\asciifile.txt
    06f51e7bfced5c0623eec5f72e0999d6
#>
#[CmdletBinding()]
param (
[Parameter(Position=0, mandatory=$true)]
[string] $Algorithm,
[Parameter(Position=1, mandatory=$true, valuefrompipeline=$true)]
[string] $File
)

Begin { 
if ($VerbosePreference.Value__ -eq 0) {$verbose=$false} else {$verbose=$true}
if ($Verbose) {"OK, I'll be chatty"}
}

Process {

if ($VerbosePreference.Value__ -eq 0) {$verbose=$false} else {$verbose=$true}

	# Get the alghorthm object
	$Algo=[System.Security.Cryptography.HashAlgorithm]::Create($algorithm)
    if ($Algo){
	    # Open the file
		$Filemode = [System.IO.FileMode]::Open
		$Fs = New-Object System.Io.Filestream $File, $Filemode
		if ($fs.length -gt 0) {
		    # Now compute hash
		    $Hash = $Algo.ComputeHash($Fs)   
		    $Hashstring =""
		    foreach ($byte in $hash) {$hashstring += $byte.tostring("x2")}
		    # pass hash string on
		    if ($verbose){
			  "The {0} hash of file {1} is: `"{2}`"" -f $algorithm, $file, $hashstring
			  ""
			}
			else {
			 $Hashstring
			}
		}
		else {
		     if ($verbose) {"File {0} can not be hashed" -f $file ; ""}		
		}
		$fs.close()
		}
	else {"Algorithm {0} not found" -f $algorithm}
}