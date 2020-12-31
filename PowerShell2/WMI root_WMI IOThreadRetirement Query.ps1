$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class IOThreadRetirement -computername $computer -namespace $namespace
