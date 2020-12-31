$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DCOMApplication -computername $computer -namespace $namespace
