$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_UserDesktop -computername $computer -namespace $namespace
