$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TCPIPPrinterPort -computername $computer -namespace $namespace
