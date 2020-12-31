$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSerial_CommProperties -computername $computer -namespace $namespace
