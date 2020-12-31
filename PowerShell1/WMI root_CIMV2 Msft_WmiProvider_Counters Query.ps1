$computer = "LocalHost" 
$namespace = "root\CIMV2" 
Get-WmiObject -class Msft_WmiProvider_Counters -computername $computer -namespace $namespace
