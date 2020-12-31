<#
.SYNOPSIS
    This script displays the usage of the Exists and the
    Copy methods of System.Io.File	
.DESCRIPTION
    This script sets up two file names, then checks to see if
    the sorucefile exists. if so, it's copied to a new file.
.NOTES
    File Name  : copy-file.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.io.file.exists.aspx
.EXAMPLE
    PSH [C:\foo]: .\Copy-File.PS1'
    Source File (c:\foo\Test.txt) copied to (c:\foo\Test2.txt)
#>

##
# Start of script
##

# Setup source and destination files
$SourceFile = "c:\foo\Test.txt";
$NewFile    = "c:\foo\Test2.txt";

# Check to see if $Sourcefile exists, and if so,
# copy it to $newfile 
if ([System.IO.File]::Exists($SourceFile))  {
   [System.IO.File]::Copy($SourceFile, $NewFile)
   "Source File ($SourceFile) copied to ($newFile)"
}
else {
"Source file ($Sourcefile) does not exist."
}
# End of script