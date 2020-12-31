$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_IDEController -computername $computer -namespace $namespace
