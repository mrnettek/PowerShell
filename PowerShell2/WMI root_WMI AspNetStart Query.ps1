$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetStart -computername $computer -namespace $namespace
