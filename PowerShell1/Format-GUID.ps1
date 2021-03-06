<#
.SYNOPSIS
    This script Creates then displays a GUID by using .TOString()
.DESCRIPTION
    This script demonstrates the 4 format specifiers you can
    send to .TOString() to affect the display. Note when you run
    this script, you will get a different GUID to the one shown
    in the example
.NOTES
    File Name  : Format-GUID.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/97af8hh4.aspx
.EXAMPLE
    PS Mod:\> E:\PowerShellScriptLib\System.Guid\Format-GUID.ps1
    Using the P format string, guid is: (f221065b-a57d-42ac-aa1d-0bfeb433c804)
    Using the D format string, guid is: f221065b-a57d-42ac-aa1d-0bfeb433c804
    Using the N format string, guid is: f221065ba57d42acaa1d0bfeb433c804
    Using the P format string, guid is: {f221065b-a57d-42ac-aa1d-0bfeb433c804}
#>
  
##
# Start of Script
##
   
# Create a GUID 
$guid =[System.Guid]::newguid()
  
# Display GUID
# Using the P secifier
"Using the {0} format string, guid is: {1}" -f "P",$guid.tostring("P")                                                                                                           
  
# Using the D secifier
"Using the {0} format string, guid is: {1}" -f "D",$guid.tostring("D")                                                                                                           
  
# Using the N secifier
"Using the {0} format string, guid is: {1}" -f "N",$guid.tostring("N")                                                                                                           
  
# Using the B secifier
"Using the {0} format string, guid is: {1}" -f "B",$guid.tostring("B")
# End of script