$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MethodLoadUnLoad -computername $computer -namespace $namespace
