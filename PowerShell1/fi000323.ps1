$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PerfRawData_WindowsWorkflowFoundation3000_WindowsWorkflowFoundation -computername $computer -namespace $namespace
