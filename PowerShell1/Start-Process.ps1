<#
.SYNOPSIS
    This script creates and starts a Process using .NET
.DESCRIPTION
    This script Creates a process object and sets
    the executable to notepad. The script then starts
    the process.
.NOTES
    File Name  : Start-Process.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/05/start-processps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.diagnostics.process.aspx
.EXAMPLE
   When this script runs - you see a copy of notepad popup.
#>

##
# Start of Script
##

# Create a new process object
$Process = new-object System.Diagnostics.Process 
try  {
$Process.StartInfo.UseShellExecute = $false

# Pick process to start  now - for excitement, use notepad.exe
$Process.StartInfo.FileName = "C:\windows\system32\notepad.exe"

# Start process 
$Process.Start()
}
catch {
  " Error:";$Error[0] 
}
