$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSMCAInfo_RawCorrectedPlatformEvent -computername $computer -namespace $namespace
