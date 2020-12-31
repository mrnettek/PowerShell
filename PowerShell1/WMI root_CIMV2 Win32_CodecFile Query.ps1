$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_CodecFile -computername $computer -namespace $namespace
