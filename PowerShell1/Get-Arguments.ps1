##############################################################################
##
## Get-Arguments.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Use command-line arguments
##############################################################################
param($firstNamedArgument, [int] $secondNamedArgument = 0)

## Display the arguments by name
"First named argument is: $firstNamedArgument"
"Second named argument is: $secondNamedArgument"

function GetArgumentsFunction
{
## We could use a param statement here, as well
## param($firstNamedArgument, [int] $secondNamedArgument = 0)

## Display the arguments by position
"First positional function argument is: " + $args[0]
"Second positional function argument is: " + $args[1]
}

GetArgumentsFunction One Two

$scriptBlock = 
{
    param($firstNamedArgument, [int] $secondNamedArgument = 0)

    ## We could use $args here, as well
    "First named scriptblock argument is: $firstNamedArgument"
    "Second named scriptblock argument is: $secondNamedArgument"
}

& $scriptBlock -First One -Second 4.5
