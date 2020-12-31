$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSDiskDriver_Performance -computername $computer -namespace $namespace
