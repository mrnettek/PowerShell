$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_SoftwareFeatureParent -computername $computer -namespace $namespace
