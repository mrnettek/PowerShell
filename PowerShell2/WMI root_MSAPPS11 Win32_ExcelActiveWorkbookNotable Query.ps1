$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_ExcelActiveWorkbookNotable -computername $computer -namespace $namespace
