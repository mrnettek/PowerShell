<#
.SYNOPSIS
    This script reimplements an MSDN sample in PowerShell
.DESCRIPTION
    This script creates a temporary file, then copies it.
.NOTES
    File Name  : Copy-TempFile.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://
.EXAMPLE
    PSH [C:\foo]: .\Copy-Tempfile.ps1'
    Contents of C:\Users\tfl\AppData\Local\Temp\tmp6569.tmp
    Hello
    And
    Welcome
    C:\Users\tfl\AppData\Local\Temp\tmp6569.tmp was copied to C:\Users\tfl\AppData\Local\Temp\tmp7294.tmp
    C:\Users\tfl\AppData\Local\Temp\tmp7294.tmp was successfully deleted.
#>
##
# Start of Script
##
 
# Get temp file path name and create a temp file
$path = [System.io.Path]::getTempFileName()
$fi1 = New-Object system.IO.FileInfo $path
 
# Add data to the file
# Create a file to write to.
   $sw = $fi1.CreateText() 
   $sw.WriteLine("Hello");
   $sw.WriteLine("And");
   $sw.WriteLine("Welcome");
   $sw.close() 
 
# Now read from the file
# Open the file to read from.
"Contents of $fi1"
 $sr = $fi1.OpenText()
 while (($s=$sr.ReadLine()) -ne $null){$s}
 
# Now copy it
 try  {
    $path2 = [System.Io.Path]::GetTempFileName()
	$fi2 = New-Object system.io.FileInfo $path2
    $fi2.Delete() #just in case
    # Copy the file.
    $result=$fi1.CopyTo($path2)
    "{0} was copied to {1}" -f $path, $path2
	$fi2.Delete()
	"{0} was successfully deleted." -f $path2
} 
catch {
"The process failed:"
$Error[0]
}
#End of script