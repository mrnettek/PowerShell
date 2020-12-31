$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_DesiredDataRates -computername $computer -namespace $namespace
