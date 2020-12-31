$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_TapiSrv_Telephony -computername $computer -namespace $namespace
