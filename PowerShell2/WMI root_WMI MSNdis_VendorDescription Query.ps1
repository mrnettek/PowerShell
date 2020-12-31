$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_VendorDescription -computername $computer -namespace $namespace
