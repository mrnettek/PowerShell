$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_HeatPipe -computername $computer -namespace $namespace
