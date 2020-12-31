$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DisplayControllerConfiguration -computername $computer -namespace $namespace
