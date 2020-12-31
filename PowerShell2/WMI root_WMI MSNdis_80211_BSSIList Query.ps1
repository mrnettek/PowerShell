$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_BSSIList -computername $computer -namespace $namespace
