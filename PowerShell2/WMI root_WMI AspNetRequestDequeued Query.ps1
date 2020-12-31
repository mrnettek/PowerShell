$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetRequestDequeued -computername $computer -namespace $namespace
