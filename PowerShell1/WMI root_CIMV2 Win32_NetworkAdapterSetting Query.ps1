$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NetworkAdapterSetting -computername $computer -namespace $namespace
