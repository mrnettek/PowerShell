$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_POTSModemToSerialPort -computername $computer -namespace $namespace
