$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ModuleLoadUnLoad -computername $computer -namespace $namespace
