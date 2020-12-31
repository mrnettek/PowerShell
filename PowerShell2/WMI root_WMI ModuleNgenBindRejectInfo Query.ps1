$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ModuleNgenBindRejectInfo -computername $computer -namespace $namespace
