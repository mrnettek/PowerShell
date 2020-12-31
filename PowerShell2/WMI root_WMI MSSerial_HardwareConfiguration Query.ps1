$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSerial_HardwareConfiguration -computername $computer -namespace $namespace
