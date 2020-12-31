$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSmBios_Sysid1394List -computername $computer -namespace $namespace
