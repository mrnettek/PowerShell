$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_Spooler_PrintQueue -computername $computer -namespace $namespace
