$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_RSVP_RSVPInterfaces -computername $computer -namespace $namespace
