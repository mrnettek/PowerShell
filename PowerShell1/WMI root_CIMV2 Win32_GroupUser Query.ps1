$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_GroupUser -computername $computer -namespace $namespace
