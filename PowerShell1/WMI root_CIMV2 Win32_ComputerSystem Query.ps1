$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ComputerSystem -computername $computer -namespace $namespace
