$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class IOThreadCreation -computername $computer -namespace $namespace
