$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MediaInUse -computername $computer -namespace $namespace
