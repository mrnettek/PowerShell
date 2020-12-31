$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_TSGeneralSetting -computername $computer -namespace $namespace
