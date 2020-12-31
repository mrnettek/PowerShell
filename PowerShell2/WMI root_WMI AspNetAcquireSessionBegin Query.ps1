$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetAcquireSessionBegin -computername $computer -namespace $namespace
