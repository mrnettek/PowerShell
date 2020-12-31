$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_MotherboardDevice -computername $computer -namespace $namespace
