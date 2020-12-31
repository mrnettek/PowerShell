$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SerialPortSetting -computername $computer -namespace $namespace
