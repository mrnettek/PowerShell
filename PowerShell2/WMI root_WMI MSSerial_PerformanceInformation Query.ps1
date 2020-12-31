$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSerial_PerformanceInformation -computername $computer -namespace $namespace
