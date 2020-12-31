$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_ReloadDefaults -computername $computer -namespace $namespace
