$computer = "LocalHost" 
$namespace = "root\Microsoft\SqlServer\ComputerManagement10" 
Get-WmiObject -class ClientSettingsGeneralFlag -computername $computer -namespace $namespace
