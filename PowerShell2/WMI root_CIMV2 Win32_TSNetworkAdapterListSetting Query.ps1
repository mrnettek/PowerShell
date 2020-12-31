$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSNetworkAdapterListSetting -computername $computer -namespace $namespace
