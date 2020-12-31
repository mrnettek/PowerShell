$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SystemSystemDriver -computername $computer -namespace $namespace
