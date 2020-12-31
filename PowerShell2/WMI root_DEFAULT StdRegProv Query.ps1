$computer = "LocalHost" 
$namespace = "root\DEFAULT" 
Get-WmiObject -class StdRegProv -computername $computer -namespace $namespace
