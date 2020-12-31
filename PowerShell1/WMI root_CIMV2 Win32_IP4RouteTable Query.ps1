$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_IP4RouteTable -computername $computer -namespace $namespace
