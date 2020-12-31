$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CLRMethod -computername $computer -namespace $namespace
