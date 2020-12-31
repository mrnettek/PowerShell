$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Excel11DefaultFileLoc -computername $computer -namespace $namespace
