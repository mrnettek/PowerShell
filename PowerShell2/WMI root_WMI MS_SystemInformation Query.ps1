$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MS_SystemInformation -computername $computer -namespace $namespace
