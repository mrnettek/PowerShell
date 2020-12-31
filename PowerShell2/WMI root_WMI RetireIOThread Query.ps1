$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class RetireIOThread -computername $computer -namespace $namespace
