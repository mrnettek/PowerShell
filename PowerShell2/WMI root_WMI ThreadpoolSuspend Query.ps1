$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class ThreadpoolSuspend -computername $computer -namespace $namespace
