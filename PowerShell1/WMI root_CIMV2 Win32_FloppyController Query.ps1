$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_FloppyController -computername $computer -namespace $namespace
