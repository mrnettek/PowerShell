$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PortableBattery -computername $computer -namespace $namespace
