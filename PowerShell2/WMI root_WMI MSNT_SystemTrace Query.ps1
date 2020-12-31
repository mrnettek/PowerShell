$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNT_SystemTrace -computername $computer -namespace $namespace
