<#
.SYNOPSIS
    This script displays a message box and then processes it 
.DESCRIPTION
    This script firsts creates a wscript.shell object and
    invokes the popup method to display a message. The script
    then processes the response to the geroup (timeout, yes, no).
.NOTES
    File Name  : Show-MessageBox.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted tot:
        http://msdn.microsoft.com/en-us/library/x83z1d9f%28VS.84%29.aspx
.EXAMPLE
    Left as an exerecise to the reader!
#>
# Create the shell object
$WshShell = New-Object -Com Wscript.Shell

# Call the Popup method with a 7 second timeout.
$Btn = $WshShell.Popup("Do you feel alright?", 7, "Question:", 0x4 + 0x20)


switch ($Btn) {
# Yes button pressed.
  6  {"Glad to hear you feel alright."}
# No button pressed.
  7 {"Hope you're feeling better soon."}
# Timed out.
  -1 {"Is there anybody out there?"}
}