$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetTrace -computername $computer -namespace $namespace
