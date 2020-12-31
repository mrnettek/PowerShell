$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class RundownComplete -computername $computer -namespace $namespace
