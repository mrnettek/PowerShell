$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSChangerParameters -computername $computer -namespace $namespace
