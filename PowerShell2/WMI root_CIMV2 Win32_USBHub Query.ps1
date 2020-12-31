$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_USBHub -computername $computer -namespace $namespace
