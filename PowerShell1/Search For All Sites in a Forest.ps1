$objForest = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest() 
$objForest.Sites | Select-Object Name


