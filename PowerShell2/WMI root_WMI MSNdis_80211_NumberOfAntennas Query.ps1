$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_NumberOfAntennas -computername $computer -namespace $namespace
