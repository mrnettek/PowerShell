$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ApplicationCommandLine -computername $computer -namespace $namespace
