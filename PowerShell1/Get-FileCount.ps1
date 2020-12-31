<#
.SYNOPSIS
    Gets a count of files in a folder
.DESCRIPTION
    This script uses shell.application to get the folder contents then uses
	.count to work out how many files there are.    
.NOTES
    File Name  : Get-FileCount.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
#>

##
# Start Script
##

# First get shell object
$Shell = new-object -com Shell.Application

# Now get folder details and item counts for a folder
$foldername = "c:\Foo"
$folder = $shell.namespace($foldername)
if (!$folder) {
"Folder: {0} does not exist" -f $foldername
return
}

# Now output the count of folders
if ($folder) { 
 $folderitems = $folder.items() 
 $count = $folderitems.count 

 $folderps1items = $folderitems | where {$_.type -eq "PS1 File"}
 $countps1items=$folderps1items.count
 
 "Folder `"{0}`" contains {1} files"     -f $foldername, $count
 "Folder `"{0}`" contains {1} PS1 files" -f $foldername, $countps1items
 }
 # End Script