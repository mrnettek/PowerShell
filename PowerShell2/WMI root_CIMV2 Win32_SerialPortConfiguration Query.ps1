$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SerialPortConfiguration -computername $computer -namespace $namespace
