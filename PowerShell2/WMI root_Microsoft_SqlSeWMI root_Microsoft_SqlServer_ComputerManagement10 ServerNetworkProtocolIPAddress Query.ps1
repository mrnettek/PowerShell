$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ServerNetworkProtocolIPAddress -computername $computer -namespace $namespace
