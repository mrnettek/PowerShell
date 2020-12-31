$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_VolumeQuotaSetting -computername $computer -namespace $namespace
