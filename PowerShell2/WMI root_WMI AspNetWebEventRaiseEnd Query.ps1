$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetWebEventRaiseEnd -computername $computer -namespace $namespace
