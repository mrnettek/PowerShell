$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PrinterSetting -computername $computer -namespace $namespace
