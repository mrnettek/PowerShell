<#
.SYNOPSIS
    This script gets a list of non-working hardware using WMI.
.DESCRIPTION
    This script re-implements another TechNet Scripting
    Gallery script that was written in VB (see 
    http://tinyurl.com/y4hmtbr). 
	This script first uses WMI to get system details, then
    gets and displays hardware that has errored.
.NOTES
    File Name  : Get-BrokenHardware.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    This script posted to TechNet Script Gallery at:
        http://gallery.technet.microsoft.com/ScriptCenter/en-us/dbb678f4-b95b-45c3-bc8b-2ae2d052448e	
.EXAMPLE
    PSH [C:\foo]: Get-BrokenHardware.ps1
    Computer Details:
    Manufacturer: Dell Inc.
    Model:        Precision WorkStation T7400
    Service Tag:  6Y84C3J

    Hardware that's not working list
    Description:  WD My Book Device USB Device
    Device ID:    USBSTOR\OTHER&VEN_WD&PROD_MY_BOOK_DEVICE&REV_1010\7&2A4E07C&0&575532513130303732383932&1
    Error ID:     28
#>

# Display Computer details
"Computer Details:"
$comp = gwmi Win32_ComputerSystem
"Manufacturer: {0}" -f $comp.Manufacturer
"Model:        {0}" -f $comp.Model
$computer2 = Get-WmiObject Win32_ComputerSystemProduct
"Service Tag:  {0}" -f $computer2.IdentifyingNumber
""

#Get hardware that is errored
"Hardware that's not working list" 
$broken = Get-WmiObject Win32_PnPEntity | where {$_.ConfigManagerErrorCode -ne 0}

#Display broken hardware
foreach ($obj in $broken){	
"Description:  {0}" -f  $obj.Description
"Device ID:    {0}" -f  $obj.DeviceID
"Error ID:     {0}" -f  $obj.ConfigManagerErrorCode
""
}