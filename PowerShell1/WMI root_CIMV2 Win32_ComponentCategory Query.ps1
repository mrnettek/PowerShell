$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ComponentCategory -computername $computer -namespace $namespace
