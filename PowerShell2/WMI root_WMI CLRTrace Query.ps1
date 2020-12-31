$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CLRTrace -computername $computer -namespace $namespace
