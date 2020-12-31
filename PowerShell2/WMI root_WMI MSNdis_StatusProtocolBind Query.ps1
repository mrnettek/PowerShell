$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_StatusProtocolBind -computername $computer -namespace $namespace
