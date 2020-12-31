$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ProgramGroupContents -computername $computer -namespace $namespace
