$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_WindowsProductActivation -computername $computer -namespace $namespace
