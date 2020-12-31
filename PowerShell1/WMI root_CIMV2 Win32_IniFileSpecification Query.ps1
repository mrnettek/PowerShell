$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_IniFileSpecification -computername $computer -namespace $namespace
