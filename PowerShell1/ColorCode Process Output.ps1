Get-Process | 
   ForEach-Object `
      {if ($_.cpu -lt 100)
            {Write-Host $_.name, $_.cpu -foregroundcolor white}
      elseif ($_.cpu -gt 100)
            {Write-Host $_.name, $_.cpu -foregroundcolor red}}


