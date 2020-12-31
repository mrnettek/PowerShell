<#
.Synopsis
   This file contains two simple functions to manage the GUI
   in Server Core Windows Server 2012.
.DESCRIPTION
   There are two functions: Enable-ServerCoreGui that enables
   the GUI in a server core installation. Diable-ServerCoreGuI
   disables the GUI and returns the installation to 
   traditional Server Core.

   Enable-ServerCoreGui also checks to see if some or all
   parts are already installed and warns accordingly.
.EXAMPLE
   c:\foo> Enable-ServerCoreGui
   
   This enables the GUI and reboots the Server into FUll GUI mode.

.EXAMPLE
   c:\foo> Disable-ServerCoreGui
   
   This disables the GUI and reboots the Server back to Server Core mode.
#>


Function Enable-ServerCoreGui {

#    Import the module
Import-Module -Name DISM -ErrorAction Stop

# is it already enabled??
if ((Get-WindowsOptionalfeature -online -Feature ServerCore-FullServer).state -eq 'Enabled'){
  "Servercore-FullServer is already enabled"
}

if ((Get-WindowsOptionalfeature -online -Feature Server-GUI-Shell).state -eq 'Enabled'){
  "Server-GUI Shell is already enabled"
}

if ((Get-WindowsOptionalfeature -online -Feature Server-Gui-Mgmt).state -eq 'Enabled'){
  "Server-Gui-Mgmt is already enabled"
}

# Enable the features needed to add the GUI
Enable-WindowsOptionalFeature –Online -NoRestart `
      -Featurename ServerCore-FullServer, Server-Gui-Shell,Server-Gui-Mgmt

# So Restart the computer
Restart-computer
}

Function Disable-ServerCoreGui {

#    Import the module
Import-Module -Name DISM -ErrorAction Stop

# Disable all the features needed to add the GUI
# if any are already disabled, oh well - they're still disabled.
Disable-WindowsOptionalFeature –Online -NoRestart `
      -Featurename ServerCore-FullServer, Server-Gui-Shell,Server-Gui-Mgmt

# Finally Restart the computer
Restart-computer
}