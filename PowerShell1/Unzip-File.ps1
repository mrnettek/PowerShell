<#
.SYNOPSIS
    This script unzips a particular file from an archive (zip file) into a folder.
.DESCRIPTION
    for this script, c:\foo\zip1.zip must exist and contain test.txt
    The script unzips test.txt into c:\foo and tests it's creation. 
    NB: if c:\foo\test.txt alreadyexists, you'll be told and asked (by Windows) 
    to confirm your actions
.NOTES
    File Name  : unzip-file.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://pshscripts.blogspot.com/2008/07/unzip-fileps1.html
.EXAMPLE
    PS C:\foo> .\unzip-file.ps1
    Before Copy:
    Target (C:\foo\test.txt)) does not exist
    After copy:
    Target (C:\foo\test.txt) now exists
#>

##
# Start of Script
##
$sh = new-object -com shell.application

# Zip File to unzip from:
$zipfolder    = $sh.namespace("C:\foo\zip1.zip")  # where the .zip is
$item         = $zipfolder.parsename("Test.txt")  # the item in the zip
$targetfolder = $sh.namespace("c:\foo")           # where the item is to go

# first does file exist?
cd c:\foo
$f = ls test.txt -erroraction silentlycontinue
"Before Copy:"
if ($f)  {"Target ($($f.versioninfo.filename)) exists and you will be promoted for an action"} 
if (!$f) {"Target (C:\foo\test.txt)) does not exist"} 

# do the copy of zipfile item to target folder
$targetfolder.copyhere($item)

# check that it exists
"After copy:"
cd c:\foo
$f = ls test.txt -erroraction silentlycontinue
if ($f) {"Target ($($f.versioninfo.filename)) now exists"}
# End of Script