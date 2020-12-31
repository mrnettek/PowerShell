$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_OleDbProvider -computername $computer -namespace $namespace
