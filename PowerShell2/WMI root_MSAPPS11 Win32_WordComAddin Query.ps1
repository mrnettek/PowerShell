$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_WordComAddin -computername $computer -namespace $namespace
