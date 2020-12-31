$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class IP1394_QueryArrayOID -computername $computer -namespace $namespace
