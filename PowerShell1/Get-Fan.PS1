<#
.SYNOPSIS
    Uses Win32_Fan class to return information about fans in a system.    
.DESCRIPTION
    This script first defines some functions to decode various 
	WMI attributed from binary to text. Then the script calls 
	Get-WmiObject to retrieve fan details, then formats that
	information (using the functions defined at the top of the script.
	
.NOTES
    File Name  : Get-Fan.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    Script posted to:
	http://pshscripts.blogspot.com/2009/04/win32fan-sample-using-powershell.html
	Original MSDN Page
	http://msdn.microsoft.com/en-us/library/aa394146(VS.85).aspx
.EXAMPLE
    Left as an exercise for the viewer.    
#>

###
# Start of Script
###

# Functions to decode details

function FanAvailability {
param ($value)
switch ($value) {
1    {"Other"}
2    {"Unknown"}
3    {"Running on full power"}
4    {"Warning"}
5    {"In Test"}
6    {"Not Applicable"}
7    {"Power Off"}
8    {"Off Line"}
9    {"Off Duty"}
10   {"Degraded"}
11   {"Not Installed"}
12   {"Install Error"}
13   {"Power Save - Unknown"}
14   {"Power Save - Low Power Mode"}
15   {"Power Save - Standby"}
16   {"Power Cycle"}
17   {"Power Save - Warning"}
default {"NOT SET"}
 }
}

function ConfigManagerErrorCode {
param ($value)
switch ($value) {
0 {"Device Is Working Properly"}
1 {"Device is not configured correctly"}
2 {"Windows Cannot load the driver for this device"}
3 {"Driver for this device might be corrupted, or the system may be low on memory or other resources"}
4 {"Device is not working properly. One of its drivers or the registry might be corrupted"}
5 {"Driver for the device requires a resource that Windows cannot manage"}
6 {"Boot configuration for the device conflicts with other devices"}
7 {"Cannot filter"}
8 {"Driver loader for the device is missing"}
9 {"Device is not working properly. The controlling firmware is incorrectly reporting the resources for the device"}
10 {"Device cannot start"}
11 {"Device failed"}
12 {"Device cannot fine enough free resources to run"}
13 {"Windows cannot verify the devices's resources"}
14 {"Device cannot work propertly until the computer is restarted"}
15 {"Device is not working properly due to a possible re-enumeration problem"}
16 {"Windows cannot identify all of the resources that the device uses"}
17 {"Device is requesting an unknown resource type"}
18 {"Device drivers must be reinstalled"}
19 {"Failure using the VxD loader"}
20 {"Registry might be corrupted"}
21 {"System failure. if changing the device driver is ineffective, see the hardware documentation. Windows is removing the device"}
22 {"Device is disabled"}
23 {"System failure. if changing the device driver is ineffective, see the hardware documentation"}
24 {"Device is not present, not working properly, or does not have all of its drivers installed"}
25 {"Windows is still setting up the device"}
26 {"Windows is still setting up the device"} 
27 {"Device does not have valid log configuration"}
28 {"Device drivers are not installed"}
29 {"Device is disabled. The device firmware did not provide the required resources"}
30 {"Device is using an IRQ resource that another device is using"}
31 {"Device is not working properly. Windows cannot load the required device drivers."}
default {"NOT SET"}
}
}

function PowerManagementCapabilities {
param ($value)
switch ($value) {
0 {"Unknown"}
1 {"Not Supported"}
2 {"Disabled"}
3 {"Enabled"}
4 {"Power Saving Modes Entered Automatically"}
5 {"Power State Settable"}
6 {"Power Cycling Supported"}
7 {"Timed Power-On Supported"}
default {"NOT SET"}
}
} 

function StatusInfo {
param ($value)
switch ($value) {
0 {"Other"}
2 {"Unknown"}
3 {"Enabled"}
4 {"Disabled"}
5 {"Not Applicable"}
default {"NOT SET"}
}
}

###
# Start of Script
##

# Get fan information
$fans = Get-WmiObject -Class Win32_Fan

# Display information
$hostnm=hostname
"Fan Information on System: {0} ({1} fans in total" -f $hostnm, $fans.count
$i=1

# display details of each fan
foreach ($fan in $fans) {
# Display details
"Fan: {0}"  -f $i
"Active Cooling                : {0}" -f $fan.ActiveCooling
"Availability                  : {0}" -f (fanavailability($fan.availability))
"Caption                       : {0}" -f $fan.caption
"Config Manager Error code     : {0}" -f (ConfigManagerErrorCode($fan.ConfigManagerErrorCode))
"Config Manager User Config    : {0}" -f $fan.ConfigManagerUserConfig
"Creation Class Name           : {0}" -f $fan.CreationClassName
"Description                   : {0}" -f $fan.Description
"Desired speed                 : {0}" -f $fan.DesiredSpeed
"Error Cleared                 : {0}" -f $fan.ErrorCleared
"Error Description             : {0}" -f $fan.ErrorDescription
"Install Date                  : {0}" -f $fan.InstallDate
"Last Error code               : {0}" -f $fan.LastErrorCode
"Name                          : {0}" -f $fan.name
"PNP Device Id                 : {0}" -f $fan.PNPDeviceID
"Power Management Capabilities : {0}" -f (PowerManagementCapabilities($fan.PowerManagementCapabilities))
"Status                        : {0}" -f $fan.Status
"Status Information            : {0}" -f (statusinfo($fan.StatusInfo))
"System Creation Class Name    : {0}" -f $fan.syu
"System Name                   : {0}" -f $fan.SystemName
"Variable Speed                : {0}" -f $fan.VariableSpeed

$i++;""
}
# End of Script