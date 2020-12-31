$computer = "LocalHost" 
$namespace = "root\MSAPPS11" 
Get-WmiObject -class Win32_Word11ParagraphStyle -computername $computer -namespace $namespace
