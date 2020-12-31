$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSParallel_DeviceBytesTransferred -computername $computer -namespace $namespace
