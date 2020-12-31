<#
.SYNOPSIS
    Changes file extension  
.DESCRIPTION
    This script uses the ChangeExtension method to change a file extension
.NOTES
    File Name  : Change-Extension.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://pshscripts.blogspot.com/2009/03/change-extensionps1.html
.EXAMPLE
    PSH [C:\foo]: .\Change-Extension.ps1'
    ChangeExtension(C:\mydir\myfile.com.extension,'.old') returns 'C:\mydir\myfile.com.old'
    ChangeExtension(C:\mydir\myfile.com.extension, '') returns 'C:\mydir\myfile.com.'
    ChangeExtension(C:\mydir\, '.old') returns 'C:\mydir\.old'
#>

##
# Start of Script
##

# Setup file names
$goodFileName = "C:\mydir\myfile.com.extension"
$badFileName = "C:\mydir\"

# Change file name extensions
$result = [System.IO.Path]::ChangeExtension($goodFileName, ".old")
"ChangeExtension({0},'.old') returns '{1}'" -f $goodFileName, $result

$result = [System.IO.Path]::ChangeExtension($goodFileName, "")
"ChangeExtension({0}, '') returns '{1}'" -f $goodFileName, $result

$result = [System.IO.Path]::ChangeExtension($badFileName, ".old")
"ChangeExtension({0}, '.old') returns '{1}'" -f $badFileName, $result
# End of Script