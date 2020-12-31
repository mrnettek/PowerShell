$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_FrontPageThemes -computername $computer -namespace $namespace
