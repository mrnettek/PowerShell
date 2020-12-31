$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSDiskDriver_Geometry -computername $computer -namespace $namespace
