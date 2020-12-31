$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_BaseServiceSetIdentifier -computername $computer -namespace $namespace
