$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ServerNetworkProtocol -computername $computer -namespace $namespace
