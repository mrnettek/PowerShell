$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSWmi_PnPInstanceNames -computername $computer -namespace $namespace
