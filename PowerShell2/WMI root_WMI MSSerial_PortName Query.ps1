$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSerial_PortName -computername $computer -namespace $namespace
