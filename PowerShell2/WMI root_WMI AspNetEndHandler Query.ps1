$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetEndHandler -computername $computer -namespace $namespace
