$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_VendorID -computername $computer -namespace $namespace
