$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_WMIElementSetting -computername $computer -namespace $namespace
