<#
.SYNOPSIS
    Tests a string to see if it's null    
.DESCRIPTION
    This script uses the IsNullOrEmpty method 
.NOTES
    File Name  : Null-String.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.String\test-string.PS1'
    String s1 "abcd" is not null or empty.
    String s2 is null or empty.
    String s3 is null or empty.
#>

##
# Start of script
##
  
# Helper function
function strtest {
param( [string] $str)
if ([system.string]::IsNullOrEmpty($str)) {
      return "is null or empty"}
else {
      return "`"{0}`" is not null or empty" -f $str
}
}
 
# defind strings
[string] $s1 = "abcd"
[string] $s2 = ""
[string] $s3 = $null

"String s1 {0}."  -f $(strtest($s1))
"String s2 {0}."  -f $(strtest($s2))
"String s3 {0}."  -f $(strtest($s3))
# End of Script