$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_WordComAddins -computername $computer -namespace $namespace
