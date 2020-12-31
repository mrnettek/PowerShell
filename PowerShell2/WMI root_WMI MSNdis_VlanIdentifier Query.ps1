$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_VlanIdentifier -computername $computer -namespace $namespace
