$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetAcquireSessionEnd -computername $computer -namespace $namespace
