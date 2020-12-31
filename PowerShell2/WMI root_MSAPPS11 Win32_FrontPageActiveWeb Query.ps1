$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_FrontPageActiveWeb -computername $computer -namespace $namespace
