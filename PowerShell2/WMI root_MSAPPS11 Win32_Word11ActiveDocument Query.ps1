$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11ActiveDocument -computername $computer -namespace $namespace
