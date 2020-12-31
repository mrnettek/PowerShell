$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LoadOrderGroup -computername $computer -namespace $namespace
