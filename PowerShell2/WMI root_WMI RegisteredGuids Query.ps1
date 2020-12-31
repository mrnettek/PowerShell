$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class RegisteredGuids -computername $computer -namespace $namespace
