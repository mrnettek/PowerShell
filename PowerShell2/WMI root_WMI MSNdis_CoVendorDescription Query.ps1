$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoVendorDescription -computername $computer -namespace $namespace
