$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class IP1394StatisticsOID -computername $computer -namespace $namespace
