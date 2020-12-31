<#
.SYNOPSIS
    Gets file extension  
.DESCRIPTION
    This script uses the GetExtension method to get a file extension
.NOTES
    File Name  : get-extension.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.IO.Path\get-extension.ps1'
    GetExtension('C:\mydir.old\myfile.ext') returns '.ext'
    GetExtension('C:\mydir.old\') returns ''
#>

##
# Start of Script
##
 
#Set values
$fileName = "C:\mydir.old\myfile.ext"
$path = "C:\mydir.old\"
 
# Get filename extension
$extension = [System.IO.Path]::GetExtension($fileName)
"GetExtension('{0}') returns '{1}'" -f $fileName, $extension
 
 # Get Path Extension (hint: there is none!)
$extension = [System.IO.Path]::GetExtension($path)
"GetExtension('{0}') returns '{1}'" -f $path, $extension
# End of Script