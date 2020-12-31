$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ProgramGroup -computername $computer -namespace $namespace
