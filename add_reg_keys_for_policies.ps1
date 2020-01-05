# MrNetTek
# eddiejackson.net/blog
# 1/5/2020
# free for public use 
# free to claim as your own

# I created this for configuring GP using PowerShell in Intune. Just pass the relative GP reg settings using 
# Add-RegPolicy: Test locally, Upload to Intune > Device configuration > PowerShell scripts, Assign Group.

# Template Code
# Add-RegPolicy -hive "HKLM" -path "SOFTWARE\\_test" -type STRING -name "TEST" -data "DataHere"
# Add-RegPolicy -hive "HKLM" -path "SOFTWARE\\_test" -type DWORD -name "TEST" -data 0
# Add-RegPolicy -hive "HKLM" -path "SOFTWARE\\_test" -type BINARY -name "TEST" -data "a6,d8,ff,00,76,b9,ed,00,42,9c,e3,00,00,78,d7,00,00,5a,9e,00,00,42,75,00,00,26,42,00,f7,63,0c,00"

# Example: Enable Remote Desktop Connectivity
# Add-RegPolicy -hive "HKLM" -path "SYSTEM\\CurrentControlSet\\Control\\Terminal Server" -type DWORD -name "fDenyTSConnections" -data 0
# Add-RegPolicy -hive "HKLM" -path "SYSTEM\\CurrentControlSet\\Control\\Terminal Server" -type DWORD -name "TSUserEnabled" -data 1
# Add-RegPolicy -hive "HKLM" -path "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Winlogon" -type STRING -name "WinStationsDisabled" -data "0"



Function Add-RegPolicy($hive,$path,$type,$name,$data)
{
    $ErrorActionPreference= 'silentlycontinue'
 
    $regPath = "$hive`:\$path"
  
    if(-not (Test-Path -path $regPath))
        {
            # Create Path
            New-Item -Path "$regPath" | Out-null
             
        }
             
       # Remove Reg Key
       Remove-ItemProperty -Path $regPath -Name $name -Force | Out-Null
        
       # Add Reg Key
       New-ItemProperty -Path $regPath -Name $name -Value $data -PropertyType $type | Out-Null             
        
       # Required for Binary 
       #$hex = $data.Split(',') | % { "0x$_"}            
       #New-ItemProperty -Path $regPath -Name $name -Value ([byte[]]$hex) -PropertyType $type | Out-Null
  
}
 
# Reg Hive + Reg Path + Reg Type + Reg Name + Reg Data
Add-RegPolicy -hive "HKLM" -path "SOFTWARE\\_test" -type STRING -name "TEST" -data "DataHere"
