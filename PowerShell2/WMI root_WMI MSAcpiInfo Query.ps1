$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSAcpiInfo -computername $computer -namespace $namespace
