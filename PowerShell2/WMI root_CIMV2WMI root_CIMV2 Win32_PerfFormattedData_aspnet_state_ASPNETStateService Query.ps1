$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfFormattedData_aspnet_state_ASPNETStateService -computername $computer -namespace $namespace
