$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class IP1394TopologyOID -computername $computer -namespace $namespace
