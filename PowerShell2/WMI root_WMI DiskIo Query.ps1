$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class DiskIo -computername $computer -namespace $namespace
