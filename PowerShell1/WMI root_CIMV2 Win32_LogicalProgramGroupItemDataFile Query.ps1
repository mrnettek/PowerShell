$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_LogicalProgramGroupItemDataFile -computername $computer -namespace $namespace