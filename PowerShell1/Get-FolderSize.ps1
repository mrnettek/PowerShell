<#
.SYNOPSIS
    This script displays the size of a folder
.DESCRIPTION
    This script is a rewrite of an MSDN sample. It 
    uses System.IO namespace to determine the size
    of a folder and its subfolders, then displays it.
    Note that the Get-DirSize function is recursive! 
.NOTES
    File Name  : Get-FolderSize.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2009/10/get-foldersizeps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.io.directory.aspx
.EXAMPLE
    PSH [C:\foo]: .Get-FolderSize c:\foo
    The size of C:\Foo and its subdirectories is 17,577,318 bytes
#>

param (
$folder = "C:\Foo"
)

##
# Helper Function Get-DirSize
##
function Get-DirSize {
param ([system.IO.DirectoryInfo] $d)
$Size = 0;    

# Add file sizes.
$fis = $d.GetFiles();
foreach ($fi in $fis){      
         $size += $fi.Length;    
        }
# Add subdirectory sizes recursively.
$dis = $d.GetDirectories()
foreach ($di in $dis) {
     $Size += Get-DirSize($di)   
     }
 return $Size 
}

## End of Get-DirSize helper function	

##
# Start of Script
$d = New-Object system.IO.DirectoryInfo $folder
$size= Get-Dirsize $d
"The size of {0} and its subdirectories is {1} bytes" -f $d,$size.ToString("###,###")