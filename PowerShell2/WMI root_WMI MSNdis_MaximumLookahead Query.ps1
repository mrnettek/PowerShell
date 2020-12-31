$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_MaximumLookahead -computername $computer -namespace $namespace
