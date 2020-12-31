##############################################################################
##
## Get-DetailedSystemInformation.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Get detailed information about a system.
##
## ie:
##
##  PS >Get-DetailedSystemInformation LEE-DESK > output.txt
##
##############################################################################

param(
  $computer = "."
  )

"#"*80
"System Information Summary"
"Generated $(Get-Date)"
"#"*80
""
""

"#"*80
"Computer System Information"
"#"*80
Get-WmiObject Win32_ComputerSystem -Computer $computer | Format-List *

"#"*80
"Operating System Information"
"#"*80
Get-WmiObject Win32_OperatingSystem -Computer $computer | Format-List *

"#"*80
"BIOS Information"
"#"*80
Get-WmiObject Win32_Bios -Computer $computer | Format-List *

"#"*80
"Memory Information"
"#"*80
Get-WmiObject Win32_PhysicalMemory -Computer $computer | Format-List *

"#"*80
"Physical Disk Information"
"#"*80
Get-WmiObject Win32_DiskDrive -Computer $computer | Format-List *

"#"*80
"Logical Disk Information"
"#"*80
Get-WmiObject Win32_LogicalDisk -Computer $computer | Format-List *
