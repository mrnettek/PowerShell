$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LoadOrderGroupServiceMembers -computername $computer -namespace $namespace
