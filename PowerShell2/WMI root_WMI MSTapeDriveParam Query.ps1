$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSTapeDriveParam -computername $computer -namespace $namespace
