$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetCompileEnter -computername $computer -namespace $namespace
