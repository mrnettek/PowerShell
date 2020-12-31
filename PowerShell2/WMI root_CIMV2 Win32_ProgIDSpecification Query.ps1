$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ProgIDSpecification -computername $computer -namespace $namespace
