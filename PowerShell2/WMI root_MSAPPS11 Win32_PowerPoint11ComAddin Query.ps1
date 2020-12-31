$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_PowerPoint11ComAddin -computername $computer -namespace $namespace
