$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_80211_FragmentationThreshold -computername $computer -namespace $namespace
