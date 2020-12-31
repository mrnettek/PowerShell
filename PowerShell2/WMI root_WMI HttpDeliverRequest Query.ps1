$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class HttpDeliverRequest -computername $computer -namespace $namespace
