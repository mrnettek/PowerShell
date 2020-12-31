$objForest = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest() 
$objForest.Domains | Select-Object Name

