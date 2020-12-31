$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetStartHandler -computername $computer -namespace $namespace
