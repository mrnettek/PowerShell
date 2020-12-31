$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_RSVP_RSVPService -computername $computer -namespace $namespace
