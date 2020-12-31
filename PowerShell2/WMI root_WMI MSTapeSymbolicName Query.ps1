$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSTapeSymbolicName -computername $computer -namespace $namespace
