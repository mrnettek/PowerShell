$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Process_V0 -computername $computer -namespace $namespace
