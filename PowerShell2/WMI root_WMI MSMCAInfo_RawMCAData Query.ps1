$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAInfo_RawMCAData -computername $computer -namespace $namespace
