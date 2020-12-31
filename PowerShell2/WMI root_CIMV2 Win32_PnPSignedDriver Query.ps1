$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PnPSignedDriver -computername $computer -namespace $namespace
