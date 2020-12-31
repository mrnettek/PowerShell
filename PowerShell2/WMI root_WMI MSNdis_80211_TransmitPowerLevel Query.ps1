$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_TransmitPowerLevel -computername $computer -namespace $namespace
