$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Image -computername $computer -namespace $namespace
