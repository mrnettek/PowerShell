$computer = "LocalHost" 
$namespace = "root\Policy" 
Get-WmiObject -class MSFT_SomFilterStatus -computername $computer -namespace $namespace
