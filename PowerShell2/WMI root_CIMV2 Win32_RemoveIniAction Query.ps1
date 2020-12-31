$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_RemoveIniAction -computername $computer -namespace $namespace
