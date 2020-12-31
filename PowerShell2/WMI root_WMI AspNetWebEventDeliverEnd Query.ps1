$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetWebEventDeliverEnd -computername $computer -namespace $namespace
