$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Win32_ReserveCost -computername $computer -namespace $namespace
