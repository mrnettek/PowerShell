$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_QuickFixEngineering -computername $computer -namespace $namespace
