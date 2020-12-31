$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MethodLoadUnLoadVerbose -computername $computer -namespace $namespace
