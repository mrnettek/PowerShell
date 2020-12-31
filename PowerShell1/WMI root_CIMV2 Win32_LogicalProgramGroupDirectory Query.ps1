$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalProgramGroupDirectory -computername $computer -namespace $namespace
