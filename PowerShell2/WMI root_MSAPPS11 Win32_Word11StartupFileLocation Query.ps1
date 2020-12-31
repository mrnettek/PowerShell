$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11StartupFileLocation -computername $computer -namespace $namespace
