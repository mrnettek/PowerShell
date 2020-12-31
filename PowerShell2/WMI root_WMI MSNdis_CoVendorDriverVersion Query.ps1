$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_CoVendorDriverVersion -computername $computer -namespace $namespace
