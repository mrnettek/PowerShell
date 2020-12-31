$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ClientNetworkProtocol -computername $computer -namespace $namespace
