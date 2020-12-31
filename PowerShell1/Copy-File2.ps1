<#
.SYNOPSIS
    This script creates a file, then reads it and displays the output.
.DESCRIPTION
    This script reimplements the MSDN sample for this page. It first creates a file (assuming the file
    does not already exist) and writes three lines to it. The script then opens the file, reads each
    line and displays it.	
	
.NOTES
    File Name  : Copy-File2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.io.file.aspx
        http://msdn.microsoft.com/en-us/library/system.io.file.createtext.aspx		
        http://msdn.microsoft.com/en-us/library/system.io.file.opentext.aspx
		
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Io.File\Copy-File2.PS1'
    Hello
    And
    Welcome 
#>
  
# Set name of file to use for this script
$path = "c:\foo\MyTest.txt"
  
# Create the file if it does not already exist
if (![System.IO.File]::Exists($path))  {
  $sw = [System.Io.File]::CreateText($path)
  $sw.WriteLine("Hello")
  $sw.WriteLine("And")
  $sw.WriteLine("Welcome")
}
  
# Open the file to read from and set $s to an empty string
$sr = [System.Io.File]::OpenText($path)
$s = "";

# Loop through the file, line at a time and display the output
while (($s = $sr.ReadLine()) -ne $null)  {
  $s
}
 
# And close the reader/writer
$sw.Close()
$sr.Close()