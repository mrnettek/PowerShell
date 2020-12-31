$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSNetworkAdapterSetting -computername $computer -namespace $namespace
