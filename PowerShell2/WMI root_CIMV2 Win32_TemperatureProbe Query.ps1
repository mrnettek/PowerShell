$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TemperatureProbe -computername $computer -namespace $namespace
