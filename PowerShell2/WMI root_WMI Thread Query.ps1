$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Thread -computername $computer -namespace $namespace
