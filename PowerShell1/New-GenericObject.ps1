##############################################################################
##
## New-GenericObject.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Creates an object of a generic type:
##
## Usage:
##
##   # Simple generic collection
##   New-GenericObject System.Collections.ObjectModel.Collection System.Int32
##
##   # Generic dictionary with two types
##   New-GenericObject System.Collections.Generic.Dictionary `
##       System.String,System.Int32
##
##   # Generic list as the second type to a generic dictionary
##   $secondType = New-GenericObject System.Collections.Generic.List Int32
##   New-GenericObject System.Collections.Dictionary `
##       System.String,$secondType.GetType()
##
##   # Generic type with a non-default constructor
##   New-GenericObject System.Collections.Generic.LinkedListNode `
##       System.String "Hi"
##
##############################################################################

param(
    [string] $typeName = $(throw "Please specify a generic type name"),
    [string[]] $typeParameters = $(throw "Please specify the type parameters"),
    [object[]] $constructorParameters
    )

## Create the generic type name
$genericTypeName = $typeName + '`' + $typeParameters.Count
$genericType = [Type] $genericTypeName

if(-not $genericType)
{
    throw "Could not find generic type $genericTypeName"
}

## Bind the type arguments to it
[type[]] $typedParameters = $typeParameters
$closedType = $genericType.MakeGenericType($typedParameters)
if(-not $closedType)
{
    throw "Could not make closed type $genericType"
}

## Create the closed version of the generic type
,[Activator]::CreateInstance($closedType, $constructorParameters)
