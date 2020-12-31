$computer = "LocalHost" 
$namespace = "root\ServiceModel" 
Get-WmiObject -class TcpConnectionPoolSettings -computername $computer -namespace $namespace
