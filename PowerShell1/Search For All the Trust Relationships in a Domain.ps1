$objDomain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain() 
$objDomain.GetAllTrustRelationships() | Select-Object TargetName


