Get-Service | 
   ForEach-Object `
      {if ($_.Status -eq "stopped")
            {Write-Host $_.name, $_.Status -foregroundcolor red -separator ",`n`t"}
      elseif ($_.Status -eq "running")
            {Write-Host $_.name, $_.Status -foregroundcolor green -separator ",`n`t"}}

