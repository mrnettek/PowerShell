$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SubDirectory -computername $computer -namespace $namespace
