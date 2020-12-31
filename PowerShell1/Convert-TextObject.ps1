##############################################################################
##
## Convert-TextObject.ps1 -- Convert a simple string into a custom PowerShell
## object.
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
##        Parameters:
##
##        [string] Delimiter
##            If specified, gives the .NET Regular Expression with which to
##            split the string. The script generates properties for the 
##            resulting object out of the elements resulting from this split.
##            If not specified, defaults to splitting on the maximum amount
##            of whitespace: "\s+", as long as ParseExpression is not 
##            specified either.
##
##        [string] ParseExpression
##            If specified, gives the .NET Regular Expression with which to 
##            parse the string. The script generates properties for the 
##            resulting object out of the groups captured by this regular
##            expression.
##
##        ** NOTE ** Delimiter and ParseExpression are mutually exclusive.
##
##        [string[]] PropertyName
##            If specified, the script will pair the names from this object
##            definition with the elements from the parsed string.  If not
##            specified (or the generated object contains more properties
##            than you specify,) the script uses property names in the
##            pattern of Property1,Property2,...,PropertyN
##
##        [type[]] PropertyType
##            If specified, the script will pair the types from this list with
##            the properties from the parsed string.  If not specified (or the
##            generated object contains more properties than you specify,) the
##            script sets the properties to be of type [string]
##
##
##        Example usage:
##            "Hello World" | Convert-TextObject
##            Generates an Object with "Property1=Hello" and "Property2=World"
##
##            "Hello World" | Convert-TextObject -Delimiter "ll"
##            Generates an Object with "Property1=He" and "Property2=o World"
##
##            "Hello World" | Convert-TextObject -ParseExpression "He(ll.*o)r(ld)"
##            Generates an Object with "Property1=llo Wo" and "Property2=ld"
##
##            "Hello World" | Convert-TextObject -PropertyName FirstWord,SecondWord
##            Generates an Object with "FirstWord=Hello" and "SecondWord=World
##
##            "123 456" | Convert-TextObject -PropertyType $([string],[int])
##            Generates an Object with "Property1=123" and "Property2=456"
##            The second property is an integer, as opposed to a string
##
##############################################################################
param(
    [string] $delimiter, 
    [string] $parseExpression, 
    [string[]] $propertyName, 
    [type[]] $propertyType
    )

function Main(
    $inputObjects, $parseExpression, $propertyType, 
    $propertyName, $delimiter)
{
    $delimiterSpecified = [bool] $delimiter
    $parseExpressionSpecified = [bool] $parseExpression

    ## If they've specified both ParseExpression and Delimiter, show usage
    if($delimiterSpecified -and $parseExpressionSpecified)
    {
        Usage
        return
    }

    ## If they enter no parameters, assume a default delimiter of whitespace
    if(-not $($delimiterSpecified -or $parseExpressionSpecified))
    {
        $delimiter = "\s+"
        $delimiterSpecified = $true
    }

    ## Cycle through the $inputObjects, and parse it into objects
    foreach($inputObject in $inputObjects)
    {
        if(-not $inputObject) { $inputObject = "" }
        foreach($inputLine in $inputObject.ToString())
        {
            ParseTextObject $inputLine $delimiter $parseExpression `
                $propertyType $propertyName
        }
    }
}

function Usage
{
    "Usage: "
    " Convert-TextObject"
    " Convert-TextObject -ParseExpression parseExpression " +
        "[-PropertyName propertyName] [-PropertyType propertyType]"
    " Convert-TextObject -Delimiter delimiter " + 
        "[-PropertyName propertyName] [-PropertyType propertyType]"
    return
}

## Function definition -- ParseTextObject.
## Perform the heavy-lifting -- parse a string into its components.
## for each component, add it as a note to the Object that we return
function ParseTextObject
{
    param(
        $textInput, $delimiter, $parseExpression,
        $propertyTypes, $propertyNames)

    $parseExpressionSpecified = -not $delimiter

    $returnObject = New-Object PSObject

    $matches = $null
    $matchCount = 0
    if($parseExpressionSpecified)
    {
        ## Populates the matches variable by default
        [void] ($textInput -match $parseExpression)
        $matchCount = $matches.Count
    }
    else
    {
        $matches = [Regex]::Split($textInput, $delimiter)
        $matchCount = $matches.Length
    }

    $counter = 0
    if($parseExpressionSpecified) { $counter++ }
    for(; $counter -lt $matchCount; $counter++)
    {
        $propertyName = "None"
        $propertyType = [string]

        ## Parse by Expression
        if($parseExpressionSpecified)
        {
            $propertyName = "Property$counter"

            ## Get the property name
            if($counter -le $propertyNames.Length)
            {
                if($propertyName[$counter - 1])
                {
                    $propertyName = $propertyNames[$counter - 1] 
                }
            }

            ## Get the property value
            if($counter -le $propertyTypes.Length)
            {
                if($types[$counter - 1])
                {
                    $propertyType = $propertyTypes[$counter - 1] 
                }
            }
        }
        ## Parse by delimiter
        else
        {
            $propertyName = "Property$($counter + 1)"

            ## Get the property name
            if($counter -lt $propertyNames.Length) 
            {
                if($propertyNames[$counter])
                {
                    $propertyName = $propertyNames[$counter] 
                }
            }

            ## Get the property value
            if($counter -lt $propertyTypes.Length)
            {
                if($propertyTypes[$counter])
                {
                    $propertyType = $propertyTypes[$counter] 
                }
            }
        }

        Add-Note $returnObject $propertyName `
            ($matches[$counter] -as $propertyType)
    }

    $returnObject
}

## Add a note to an object
function Add-Note ($object, $name, $value) 
{
     $object | Add-Member NoteProperty $name $value
}


Main $input $parseExpression $propertyType $propertyName $delimiter