$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SoftwareFeatureCheck -computername $computer -namespace $namespace
