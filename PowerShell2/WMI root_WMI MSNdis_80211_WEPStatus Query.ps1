$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_WEPStatus -computername $computer -namespace $namespace
