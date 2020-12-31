$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_ReceiveAntennaSelected -computername $computer -namespace $namespace
