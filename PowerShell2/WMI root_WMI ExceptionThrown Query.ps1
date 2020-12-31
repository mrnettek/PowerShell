$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ExceptionThrown -computername $computer -namespace $namespace
