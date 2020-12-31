$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PrinterConfiguration -computername $computer -namespace $namespace
