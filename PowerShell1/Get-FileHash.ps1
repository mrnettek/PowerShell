##############################################################################
##
## Get-FileHash.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Get the hash of an input file.
##
## ie:
##
##  PS >Get-FileHash myFile.txt
##  PS >dir | Get-FileHash
##  PS >Get-FileHash myFile.txt -Hash SHA1
##
##############################################################################

param(
  $path,
  $hashAlgorithm = "MD5"
  )

## Create the hash object that calculates the hash of our file. If they
## provide an invalid hash algorithm, provide an error message.
if($hashAlgorithm -eq "MD5")
{
    $hasher = [System.Security.Cryptography.MD5]::Create()
}
elseif($hashAlgorithm -eq "SHA1")
{
    $hasher = [System.Security.Cryptography.SHA1]::Create()
}
elseif($hashAlgorithm -eq "SHA256")
{
    $hasher = [System.Security.Cryptography.SHA256]::Create()
}
else
{
    $errorMessage = "Hash algorithm $hashAlgorithm is not valid. Valid " +
        "algorithms are MD5, SHA1, and SHA256."
    Write-Error $errorMessage
    return
}

## Create an array to hold the list of files
$files = @()

## If they specified the file name as a parameter, add that to the list
## of files to process
if($path)
{
    $files += $path
}
## Otherwise, take the files that they piped in to the script.
## For each input file, put its full name into the file list
else
{
    $files += @($input | Foreach-Object { $_.FullName })
}

## Go through each of the items in the list of input files
foreach($file in $files)
{
    ## Convert it to a fully-qualified path
    $filename = (Resolve-Path $file -ErrorAction SilentlyContinue).Path

    ## If the path does not exist (or is not a file,) just continue
    if((-not $filename) -or (-not (Test-Path $filename -Type Leaf)))
    {
        continue
    }

    ## Use the ComputeHash method from the hash object to calculate 
    ## the hash
    $inputStream = New-Object IO.StreamReader $filename
    $hashBytes = $hasher.ComputeHash($inputStream.BaseStream)
    $inputStream.Close()

    ## Convert the result to hexadecimal
    $builder = New-Object System.Text.StringBuilder
    $hashBytes | Foreach-Object { [void] $builder.Append($_.ToString("X2")) }

    ## Return a custom object with the important details from the
    ## hashing
    $output = New-Object PsObject
    $output | Add-Member NoteProperty Path ([IO.Path]::GetFileName($file))
    $output | Add-Member NoteProperty HashAlgorithm $hashAlgorithm
    $output | Add-Member NoteProperty HashValue ([string] $builder.ToString())
    $output
}