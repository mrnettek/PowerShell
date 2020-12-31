$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11DefaultFileLocation -computername $computer -namespace $namespace
