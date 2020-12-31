$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_RemoveWEP -computername $computer -namespace $namespace
