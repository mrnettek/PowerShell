$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_VoltageProbe -computername $computer -namespace $namespace
