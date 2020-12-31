$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MediaSupported -computername $computer -namespace $namespace
