$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_Refrigeration -computername $computer -namespace $namespace
