$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class ChannelPoolSettings -computername $computer -namespace $namespace
