<#
.SYNOPSIS
    This script creates then copies a file using
    System.IO.Fileinfo.CopyTo()
.DESCRIPTION
    This script first creates a temporary file, then
    copies it to another file then deletes the 
    second file.
.NOTES
    File Name : Create-TempFile.ps1
    Author : Thomas Lee - tfl@psp.co.uk
    Requires : PowerShell V2
.LINK
    This script posted to:
    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
    http://msdn.microsoft.com/en-us/library/system.io.fileinfo.aspx
.EXAMPLE
    PSH [C:\foo]: .\Create-TempFile.PS1'
    File C:\Users\tfl\AppData\Local\Temp\tmpF2C1.tmp exists
    Original file:
    -----------
    Hello
    And
    Welcome
    -----------
    C:\Users\tfl\AppData\Local\Temp\tmpF2C1.tmp was copied to C:\Users\tfl\AppData\Local\Temp\tmpF2E1.tmp
    C:\Users\tfl\AppData\Local\Temp\tmpF2E1.tmp was successfully deleted.	
#>

##
# start of script
##
 
# Create temp file and FileInfo object 
$Path = [System.Io.Path]::GetTempFileName()
$fi1 = New-Object System.Io.FileInfo $Path

# See if file exists
if ((Ls $fi1)) {
	"File {0} exists" -f $fi1 
	# Create a file to write to and write to it
	$sw = $fi1.CreateText()
	$result=$sw.WriteLine("Hello")
	$result=$sw.WriteLine("And")
	$result=$sw.WriteLine("Welcome")
	$sw.Close()
}

# Open the file to read from.
$sr = $fi1.OpenText()
$s = "";
"Original file:";"-----------"
while (($s = $sr.ReadLine()) -ne $null) {
	$s
}
"-----------"
try {
	$path2 = [System.IO.Path]::GetTempFileName()
	$fi2 = New-Object system.IO.FileInfo $path2

	# Ensure that the target does not exist.
	$fi2.Delete()

	# Copy the file
	$result = $fi1.CopyTo($path2)

	"{0} was copied to {1}" -f $path, $path2

	# Delete the newly created file.
	$fi2.Delete()
	"{0} was successfully deleted." -f $path2
} 
catch {
	"The process failed:";$Error[0]
}
# End of Script