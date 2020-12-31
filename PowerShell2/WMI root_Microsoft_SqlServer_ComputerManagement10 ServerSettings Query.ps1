$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ServerSettings -computername $computer -namespace $namespace
