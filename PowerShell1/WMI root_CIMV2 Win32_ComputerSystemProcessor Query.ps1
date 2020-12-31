$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ComputerSystemProcessor -computername $computer -namespace $namespace
