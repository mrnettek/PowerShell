$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetWebEventDeliverStart -computername $computer -namespace $namespace
