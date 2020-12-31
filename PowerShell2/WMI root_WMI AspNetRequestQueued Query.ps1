$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class AspNetRequestQueued -computername $computer -namespace $namespace
