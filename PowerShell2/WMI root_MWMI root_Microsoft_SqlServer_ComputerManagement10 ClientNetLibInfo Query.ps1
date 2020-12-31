$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ClientNetLibInfo -computername $computer -namespace $namespace
