$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_Battery -computername $computer -namespace $namespace
