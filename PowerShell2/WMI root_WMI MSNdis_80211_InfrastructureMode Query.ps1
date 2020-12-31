$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_InfrastructureMode -computername $computer -namespace $namespace
