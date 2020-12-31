$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAInfo_RawMCAEvent -computername $computer -namespace $namespace
