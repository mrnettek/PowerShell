<#
.SYNOPSIS
    Uses Win32_PNPEntity to return information about p&p infor
.DESCRIPTION
    This script calls Get-WmiObject to retreive plug and play details, 
	then formats and displays non-working devices. The script also has to
	work around how WMI returns 0 and 1 object (i.e. no $obj.count).
	
	This is also sample 6 on http://msdn.microsoft.com/en-us/library/aa394587(VS.85).aspx
	recoded with PowerShell.
.NOTES
    File Name  : Get-NonWorkingDevices.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script posted to:
	http://www.pshscripts.blogspot.com
	Original MSDN Page
	http://msdn.microsoft.com/en-us/library/aa394587(VS.85).aspx
.EXAMPLE
    PS C:\foo> Get-NonWorkingDevices.ps1
    No bad devices on Cookham8
.EXAMPLE
    PS C:\foo> Get-NonWorkingDevices.ps1
	Total Bad devices on Cookham8: 1
	Name           : NETGEAR FA311v2 PCI Adapter - Virtual Network
	Class Guid     : {4d36e972-e325-11ce-bfc1-08002be10318}
	Description    : Microsoft Virtual Network switch Adapter
	Device ID      : ROOT\VMS_MP\0001
	Manufacturer   :
	PNP Devcice Id : ROOT\VMS_MP\0001
	Service Name   : VMSMP
#>

###
#   Start of Script
###

# Get non-working devices:
$BadDevices = Get-WmiObject Win32_PNPEntity | where {$_.ConfigManagerErrorcode -ne 0}

# Display bad devices 
$hostname = hostname
if (!$BadDevices) {
   "No bad devices on {0}" -f $Hostname
}  # end if
else {
if (!$BadDevices.Count) {$Count=1} else {$Count=$BadDevices.Count}
"Total Bad devices on {0}: {1}" -f $Hostname, $Count
foreach ($Device in $Baddevices) {
"Name           : {0}" -f $Device.Name
"Class Guid     : {0}" -f $Device.Classguid
"Description    : {0}" -f $Device.Description
"Device ID      : {0}" -f $Device.Deviceid
"Manufacturer   : {0}" -f $Device.Manufactuer

"PNP Devcice Id : {0}" -f $Device.PNPDeviceID
"Service Name   : {0}" -f $Device.Service
""
 } # End of ForEach
}  # End of Else