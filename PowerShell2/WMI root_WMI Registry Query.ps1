$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Registry -computername $computer -namespace $namespace
