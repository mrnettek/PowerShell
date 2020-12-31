$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LoadOrderGroupServiceDependencies -computername $computer -namespace $namespace
