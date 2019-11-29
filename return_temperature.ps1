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