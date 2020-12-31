$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ServerSettingsGeneralFlag -computername $computer -namespace $namespace
