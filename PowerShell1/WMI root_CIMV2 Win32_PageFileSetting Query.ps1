$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PageFileSetting -computername $computer -namespace $namespace
