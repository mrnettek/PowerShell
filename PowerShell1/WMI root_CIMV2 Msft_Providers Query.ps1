$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Msft_Providers -computername $computer -namespace $namespace
