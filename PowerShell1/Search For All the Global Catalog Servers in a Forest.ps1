$objForest = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest() 
$objForest.FindAllGlobalCatalogs() | Select-Object Name


