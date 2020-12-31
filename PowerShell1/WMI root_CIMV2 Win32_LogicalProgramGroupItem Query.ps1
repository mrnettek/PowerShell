$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalProgramGroupItem -computername $computer -namespace $namespace
