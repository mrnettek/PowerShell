$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_EnumerateAdapter -computername $computer -namespace $namespace
