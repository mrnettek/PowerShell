<#
.SYNOPSIS
    This script uses the Outlook COM object to 
    display the data stores in the current profile
.DESCRIPTION
    This script creates an Outlook object, displays
    user information, and the stores currently
    attached to the profile.
.NOTES
    File Name  : Get-OutlookStores.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-OutlookStores.ps1'
    Current profile has the following configured accounts:

    Account Type           User Name        SMTP Address
    ------------           ---------        ------------
    Microsoft Exchange     Thomas.Lee       Thomas.Lee@cookham.net
    thomas_lee@hotmail.com Thomas Lee (MSN) thomas_lee@hotmail.com

    Exchange Offile Folder Store:
    C:\Users\tfl\AppData\Local\Microsoft\Outlook\outlook0.ost
   
    PST Files
    Display Name    File Path 
    ------------    ---------
    Archive Folders C:\Users\tfl\AppData\Local\Microsoft\Outlook\archive.pst
#>

##
# Begin Script
##

# Create Outlook object
$Outlook = New-Object -ComObject Outlook.Application
$stores = $Outlook.Session.Stores
$accounts = $outlook.session.accounts

# Basic information
"Current profile has the following configured accounts:"
$dn = @{label = "Account Type"; expression={$_.displayname}}
$un = @{label = "User Name"; expression = {$_.username}}
$sm = @{label = "SMTP Address"; expression = {$_.smtpaddress}}
$accounts | Format-Table -AutoSize $dn,$un,$sm

# Check number of stores > 0
if ($stores.Count -le 0) {"No stores found"; return}

# Outlook Off-Line folder store
$ost = $stores | where{$_.filepath -match ".ost$"}
if (!$ost)
 {
   "No Outlook Offline Folder store found"
 }
else
 {
   "Exchange Offile Folder Store:"
   $ost | ft filepath -HideTableHeaders
  }

# PST Files
$pst = $stores | where {$_.filepath -match ".pst$"}
if (!$pst)
  {
    "No PST files found"
  }
else
  {
    "PST Files"
    $dn = @{label = "Display Name"; expression={$_.displayname}}
    $fn = @{label = "File Path"; expression={$_.filepath}}
    $pst | ft $dn,$fn       
  }
# End Script  