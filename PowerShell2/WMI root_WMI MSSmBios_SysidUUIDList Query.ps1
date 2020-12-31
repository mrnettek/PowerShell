$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSmBios_SysidUUIDList -computername $computer -namespace $namespace
