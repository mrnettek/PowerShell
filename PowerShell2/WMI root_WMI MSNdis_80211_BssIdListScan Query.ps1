$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_BssIdListScan -computername $computer -namespace $namespace
