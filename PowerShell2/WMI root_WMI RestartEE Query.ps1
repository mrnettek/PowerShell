$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class RestartEE -computername $computer -namespace $namespace
