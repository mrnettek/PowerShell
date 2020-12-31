$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ActivityTransfer -computername $computer -namespace $namespace
