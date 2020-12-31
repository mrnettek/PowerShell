$computer = "LocalHost" 
$namespace = "root\WMI" 
Get-WmiObject -class MSNdis_FddiAttachmentType -computername $computer -namespace $namespace
