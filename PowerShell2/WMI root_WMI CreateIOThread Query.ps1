$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class CreateIOThread -computername $computer -namespace $namespace
