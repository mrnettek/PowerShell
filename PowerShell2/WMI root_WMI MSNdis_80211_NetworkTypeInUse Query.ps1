$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_NetworkTypeInUse -computername $computer -namespace $namespace
