$computer = "LocalHost" 
$namespace = "root\subscription" 
Get-WmiObject -class MSFT_UCScenarioAssociation -computername $computer -namespace $namespace
