$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSAcpi_ThermalZoneTemperature -computername $computer -namespace $namespace
