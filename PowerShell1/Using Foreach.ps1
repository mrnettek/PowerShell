foreach ($item in Get-Service) {Write-Host $item.Name ":::" $item.Status -foregroundcolor white}
