$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetCompileLeave -computername $computer -namespace $namespace
