$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetSessionStatePartitionEnd -computername $computer -namespace $namespace
