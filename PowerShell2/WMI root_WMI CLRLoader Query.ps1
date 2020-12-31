$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CLRLoader -computername $computer -namespace $namespace
