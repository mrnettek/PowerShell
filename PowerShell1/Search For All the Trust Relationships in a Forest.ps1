$objForest = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest() 
$objForest.GetAllTrustRelationships() | Select-Object TargetName


