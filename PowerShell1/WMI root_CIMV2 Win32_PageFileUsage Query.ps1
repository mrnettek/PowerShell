$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PageFileUsage -computername $computer -namespace $namespace
