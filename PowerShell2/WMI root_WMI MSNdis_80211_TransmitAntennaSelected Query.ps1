$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_TransmitAntennaSelected -computername $computer -namespace $namespace
