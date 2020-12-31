$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_IRQResource -computername $computer -namespace $namespace
