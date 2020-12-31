$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSSerial_CommInfo -computername $computer -namespace $namespace
