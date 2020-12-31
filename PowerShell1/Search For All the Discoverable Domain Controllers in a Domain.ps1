$objDomain = [System.DirectoryServices.ActiveDirectory.Domain]::GetCurrentDomain() 
$objDomain.FindAllDiscoverableDomainControllers() | Select-Object Name


