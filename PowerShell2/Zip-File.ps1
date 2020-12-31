<#
.SYNOPSIS
    This script zips a particular file into an existing archive (zip file).
.DESCRIPTION
    for this script, c:\foo\zip2.zip must exist
    The script zips c:\footest2.txt into c:\foo\zip2.zip
.NOTES
    File Name  : zip-file.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
.PARAMETER bar
#>

##
# Start of Script
##

# Get sh object and check to see that file exists
$sh = new-object -com shell.application
ls c:\foo\zip2.zip

# get Zip File to zip into
$targetzip = $sh.namespace("C:\Foo\Zip2.zip")   # where the item is to go

# Copy a file into this zip
$targetzip.copyhere("C:\foo\test2.txt")

# Check it now exists
ls c:\foo\zip2.zip
# End of Script