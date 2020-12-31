$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemEnclosure -computername $computer -namespace $namespace
