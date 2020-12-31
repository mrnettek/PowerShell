$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_PnPSignedDriverCIMDataFile -computername $computer -namespace $namespace
