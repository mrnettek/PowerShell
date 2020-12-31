$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_PowerPoint11AlternateStartupLoc -computername $computer -namespace $namespace
