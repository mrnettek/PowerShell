$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_ReceivedSignalStrengthEventTrigger -computername $computer -namespace $namespace
