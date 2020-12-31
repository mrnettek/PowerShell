$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class Image_V0 -computername $computer -namespace $namespace
