$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DriverVXD -computername $computer -namespace $namespace