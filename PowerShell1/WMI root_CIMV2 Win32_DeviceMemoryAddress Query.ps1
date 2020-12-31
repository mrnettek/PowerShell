$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_DeviceMemoryAddress -computername $computer -namespace $namespace
