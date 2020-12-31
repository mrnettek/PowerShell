$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_NetworkLoginProfile -computername $computer -namespace $namespace
