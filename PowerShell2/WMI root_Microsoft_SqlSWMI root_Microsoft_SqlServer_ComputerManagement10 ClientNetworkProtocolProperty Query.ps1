$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ClientNetworkProtocolProperty -computername $computer -namespace $namespace
