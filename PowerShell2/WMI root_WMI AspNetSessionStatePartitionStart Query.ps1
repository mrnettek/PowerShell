$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetSessionStatePartitionStart -computername $computer -namespace $namespace
