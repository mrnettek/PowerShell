$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ScheduledJob -computername $computer -namespace $namespace
