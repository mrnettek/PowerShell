$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusResetStart -computername $computer -namespace $namespace
