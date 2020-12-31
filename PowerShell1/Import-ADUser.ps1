############################################################################## 
## 
## Import-AdUser.ps1 
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
## 
## Create users in Active Directory from the content of a CSV.
##
## For example:
## $container = "LDAP://localhost:389/ou=West,ou=Sales,dc=Fabrikam,dc=COM"
## Import-ADUser.ps1 $container .\users.csv
##
## In the user CSV, One column must be named "CN" for the user name.
## All other columns represent properties in Active Directory for that user.
##
## For example:
## CN,userPrincipalName,displayName,manager
## MyerKen,Ken.Myer@fabrikam.com,Ken Myer,
## DoeJane,Jane.Doe@fabrikam.com,Jane Doe,"CN=MyerKen,OU=West,OU=Sales,DC=..."
## SmithRobin,Robin.Smith@fabrikam.com,Robin Smith,"CN=MyerKen,OU=West,OU=..."
##
############################################################################## 

param(
  $container = $(throw "Please specify a container (such as " +
    "LDAP://localhost:389/ou=West,ou=Sales,dc=Fabrikam,dc=COM)"),
  $csvPath = $(throw "Please specify the path to the users CSV")
  )

## Bind to the container
$userContainer = [adsi] $container

## Ensure that the container was valid
if(-not $userContainer.Name)
{
    Write-Error "Could not connect to $container"
    return
}

## Load the CSV
$users = @(Import-Csv $csvPath)
if($users.Count -eq 0)
{
    return
}

## Go through each user from the CSV
foreach($user in $users)
{
    ## Pull out the name, and create that user
    $username = $user.CN
    $newUser = $userContainer.Create("User", "CN=$username")

    ## Go through each of the properties from the CSV, and set its value
    ## on the user
    foreach($property in $user.PsObject.Properties)
    {
        ## Skip the property if it was the CN property that sets the
        ## user name
        if($property.Name -eq "CN")
        {
            continue
        }

        ## Ensure they specified a value for the property
        if(-not $property.Value)
        {
            continue
        }

        ## Set the value of the property
        $newUser.Put($property.Name, $property.Value)
    }
    
    ## Finalize the information in Active Directory
    $newUser.SetInfo()
}