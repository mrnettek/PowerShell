$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class SqlServiceAdvancedProperty -computername $computer -namespace $namespace
