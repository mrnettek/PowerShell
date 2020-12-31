$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_ServiceSetIdentifier -computername $computer -namespace $namespace
