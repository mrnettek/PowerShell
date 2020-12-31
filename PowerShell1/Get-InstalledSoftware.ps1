##############################################################################
##
## Get-InstalledSoftware.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## List all installed software on the current computer.
##
## ie:
##
##  PS >Get-InstalledSoftware PowerShell
##
##############################################################################

param(
  $displayName = ".*"
  )

## Get all the listed software in the Uninstall key
$keys = Get-ChildItem HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall

## Get all of the properties from those items
$items = $keys | Foreach-Object { Get-ItemProperty $_.PsPath }

## For each of those items, display the DisplayName and Publisher
foreach($item in $items)
{
    if(($item.DisplayName) -and ($item.DisplayName -match $displayName))
    {
        $item
    }
}
