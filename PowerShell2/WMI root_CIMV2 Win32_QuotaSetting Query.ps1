$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_QuotaSetting -computername $computer -namespace $namespace
