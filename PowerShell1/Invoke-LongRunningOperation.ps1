##############################################################################
##
## Invoke-LongRunningOperation.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Demonstrates the functionality of the Write-Progress cmdlet
##
##############################################################################

$activity = "A long running operation"

$status = "Initializing"
## Initialize the long-running operation
for($counter = 0; $counter -lt 100; $counter++)
{
    $currentOperation = "Initializing item $counter"
    Write-Progress $activity $status -PercentComplete $counter `
                   -CurrentOperation $currentOperation
    Start-Sleep -m 20
}

$status = "Running"
## Initialize the long-running operation
for($counter = 0; $counter -lt 100; $counter++)
{
    $currentOperation = "Running task $counter"
    Write-Progress $activity $status -PercentComplete $counter `
                   -CurrentOperation $currentOperation
    Start-Sleep -m 20
}