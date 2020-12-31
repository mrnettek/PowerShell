$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_ReceiveNoBuffer -computername $computer -namespace $namespace
