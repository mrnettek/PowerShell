$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_NdisEnumerateVc -computername $computer -namespace $namespace
