$objDomain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain() 
$objDomain.FindAllDomainControllers() | Select-Object Name


