$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_FrontPageTheme -computername $computer -namespace $namespace
