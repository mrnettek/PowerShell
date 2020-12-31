##############################################################################
##
## Get-OwnerReport.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Gets a list of files in the current directory, but with their owner added
## to the resulting objects.
##
## Example:
##    Get-OwnerReport
##    Get-OwnerReport | Format-Table Name,LastWriteTime,Owner
##############################################################################

$files = Get-ChildItem
foreach($file in $files)
{
    $owner = (Get-Acl $file).Owner
    $file | Add-Member NoteProperty Owner $owner
    $file
}