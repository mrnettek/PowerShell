$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PrinterDriver -computername $computer -namespace $namespace
