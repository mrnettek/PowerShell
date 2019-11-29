# MrNetTek
# eddiejackson.net/blog
# 11/29/2019
# free for public use 
# free to claim as your own

Clear-Host
 
$temperatures = ""
$Fahrenheit = ""
$temperatures = Get-WmiObject MSAcpi_ThermalZoneTemperature -Namespace "root/wmi" | Select-Object -Property InstanceName,CurrentTemperature | where InstanceName -eq "ACPI\ThermalZone\CPUZ_0"
 
$Fahrenheit = [math]::round((9/5) * ($temperatures.CurrentTemperature / 10 - 273.15) + 32)
 
Write-host "Current Temperature: $Fahrenheit F"
 
if ($Fahrenheit -gt 190) {
 
  Write-Host "Shutting down..."
  # Stop-Computer -Force
 
  }


# Notes:
# You may need to modify ACPI\ThermalZone\CPUZ_0 to ACPI\ThermalZone\CPUZ_1…2…3, etc., until you find the appropriate CPU. Other CPUs may be listed as TZ0__0, TZ00_0, TZ001_0, THM0_0.

# Idea:
# Add script to task scheduler as a task (check every 15 to 30 minutes, or so). If your laptop comes on inside your bag and gets hot, it will shutdown automatically.
