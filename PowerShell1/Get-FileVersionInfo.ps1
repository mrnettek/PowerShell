<#
.SYNOPSIS
    This script gets and displays the file version information of a file
.DESCRIPTION
    This script calls System.Diagnostics.FileVersionInfo's 
    GetVersion info method on the file. By default, the file version
    displayed/returned is that of %systemroot%\notepad.exe.	
.NOTES
    File Name  : Get-FileVersionInfo.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
	Note       : The file named passed to GetVersionInfo needs to 
	             be fully qualified, not just local name.
.LINK
    This script posted to:
      http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
     http://msdn.microsoft.com/en-us/library/system.diagnostics.fileversioninfo.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-FileVersionInfo.ps1
    File Description : Notepad
    File Version     : 6.0.6000.16386 (vista_rtm.061101-2205)
.EXAMPLE
    PSH [C:\Foo]: .\Get-FileVersionInfo.ps1' c:\windows\fveupdate.exe
    File Description : BitLocker Drive Encryption Servicing Utility
    File Version     : 6.0.6000.16386 (vista_rtm.061101-2205)
.PARAMETER filename
    The name of the file for which file version information is displayed.
#>

param (
[string] $filename = $(join-path ${env:systemroot} "Notepad.Exe")
)

##
# start of script
##

$info= [system.Diagnostics.FileVersionInfo]::GetVersionInfo($filename)
"File Description : {0}" -f  $info.filedescription
"File Version     : {0}" -f  $info.fileversion
 