$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CurrentLookahead -computername $computer -namespace $namespace
