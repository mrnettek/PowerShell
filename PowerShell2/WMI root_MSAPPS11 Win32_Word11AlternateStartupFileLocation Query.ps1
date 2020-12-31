$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11AlternateStartupFileLocation -computername $computer -namespace $namespace
