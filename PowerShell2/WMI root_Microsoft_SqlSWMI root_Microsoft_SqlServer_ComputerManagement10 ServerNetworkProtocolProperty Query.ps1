$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ServerNetworkProtocolProperty -computername $computer -namespace $namespace
