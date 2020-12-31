$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSWmi_PnPDeviceId -computername $computer -namespace $namespace
