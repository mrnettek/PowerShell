$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Access11AlternateStartupFileLoc -computername $computer -namespace $namespace
