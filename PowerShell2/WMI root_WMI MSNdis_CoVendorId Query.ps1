$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoVendorId -computername $computer -namespace $namespace
