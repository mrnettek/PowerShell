$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Publisher11AlternateStartupFileLocation -computername $computer -namespace $namespace
