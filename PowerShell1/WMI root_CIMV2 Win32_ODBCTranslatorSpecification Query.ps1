$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ODBCTranslatorSpecification -computername $computer -namespace $namespace
