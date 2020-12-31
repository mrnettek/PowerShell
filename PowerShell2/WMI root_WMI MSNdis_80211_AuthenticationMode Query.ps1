$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_AuthenticationMode -computername $computer -namespace $namespace
