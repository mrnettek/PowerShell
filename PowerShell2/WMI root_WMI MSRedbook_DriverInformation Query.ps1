$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSRedbook_DriverInformation -computername $computer -namespace $namespace
