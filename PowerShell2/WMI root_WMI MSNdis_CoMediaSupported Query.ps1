$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoMediaSupported -computername $computer -namespace $namespace
