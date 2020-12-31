## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)

## Get the size of all the items in the current directory
function Get-DirectorySize
{
    Write-Debug "Current Directory: $(Get-Location)"

    Write-Verbose "Getting size"
    $size = (Get-ChildItem | Measure-Object -Sum Length).Sum
    Write-Verbose "Got size: $size"

    Write-Host ("Directory size: {0:N0} bytes" -f $size)
}

## Get the list of items in a directory, sorted by length
function Get-ChildItemSortedByLength($path = (Get-Location))
{
    ## Problematic version
    ## Get-ChildItem $path | Format-Table | Sort Length

    ## Fixed version
    Get-ChildItem $path | Sort Length | Format-Table
}
