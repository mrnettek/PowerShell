$computer = "LocalHost" 
$namespace = "root\DEFAULT" 
Get-WmiObject -class SystemRestore -computername $computer -namespace $namespace
