$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_WMISetting -computername $computer -namespace $namespace
