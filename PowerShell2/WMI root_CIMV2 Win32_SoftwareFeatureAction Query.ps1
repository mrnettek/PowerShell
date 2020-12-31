$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SoftwareFeatureAction -computername $computer -namespace $namespace
