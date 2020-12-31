$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class GCStart -computername $computer -namespace $namespace
