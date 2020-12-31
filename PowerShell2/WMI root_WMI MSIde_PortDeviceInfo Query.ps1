$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSIde_PortDeviceInfo -computername $computer -namespace $namespace
