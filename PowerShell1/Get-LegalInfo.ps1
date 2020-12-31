<#
.SYNOPSIS
    Gets LegalCopyright and Legal Trademarks from a file, if they exist.
.DESCRIPTION
    This script uses System.Diagnostic.FileVersionInfo to get the version information
	of a file. in this sample, I use notepad.exe, as shipped with Windows.
  
	If you look at the output, you see LegalTrademarks are empty - this is the result I get on my
	main workstation. 
.NOTES
    File Name  : Get-LegalInfo.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-LegalInfo.ps1
    LegalCopyright  :  c Microsoft Corporation. All rights reserved.
    Legal Trademarks:
#>
##
# start of script
##
 
# Get the file version for the notepad.
$MyFileVersionInfo = [System.Diagnostics.FileVersionInfo]::GetVersionInfo("C:\windows\Notepad.exe")
 
# Now output legal Information
"LegalCopyright  :  {0}" -f $MyFileVersionInfo.LegalCopyright
"Legal Trademarks:  {0}" -f $myFileVersionInfo.LegalTrademarks
# End of Script