$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PrinterDriverDll -computername $computer -namespace $namespace
