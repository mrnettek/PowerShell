$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemLoadOrderGroups -computername $computer -namespace $namespace
