##############################################################################
##
## Get-DiskUsage.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Retrieve information about disk usage in the current directory and all
## subdirectories. If you specify the -IncludeSubdirectories flag, this
## script accounts for the size of subdirectories in the size of a directory.
##
## ie:
##
##  PS >Get-DiskUsage
##  PS >Get-DiskUsage -IncludeSubdirectories
##
##############################################################################

param(
  [switch] $includeSubdirectories
  )

## If they specify the -IncludeSubdirectories flag, then we want to account
## for all subdirectories in the size of each directory
if($includeSubdirectories)
{
    Get-ChildItem | Where-Object { $_.PsIsContainer } |
        Select-Object Name,
            @{ Name="Size";
            Expression={ ($_ | Get-ChildItem -Recurse |
                Measure-Object -Sum Length).Sum + 0 } }
}
## Otherwise, we just find all directories below the current directory,
## and determine their size
else
{
    Get-ChildItem -Recurse | Where-Object { $_.PsIsContainer } |
        Select-Object FullName,
            @{ Name="Size";
            Expression={ ($_ | Get-ChildItem | 
                Measure-Object -Sum Length).Sum + 0 } }
}
