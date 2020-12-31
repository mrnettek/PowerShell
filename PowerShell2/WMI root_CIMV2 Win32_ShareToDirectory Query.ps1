$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ShareToDirectory -computername $computer -namespace $namespace
