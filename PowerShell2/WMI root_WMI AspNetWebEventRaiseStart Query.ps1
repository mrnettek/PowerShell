$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetWebEventRaiseStart -computername $computer -namespace $namespace
