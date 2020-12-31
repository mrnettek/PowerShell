$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAInfo_RawCMCEvent -computername $computer -namespace $namespace
