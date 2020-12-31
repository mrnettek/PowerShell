$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class UnretireIOThread -computername $computer -namespace $namespace
