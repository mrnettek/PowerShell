##############################################################################
##
## Add-ExtendedFileProperties.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Add the extended file properties normally shown in Exlorer's 
## "File Properties" tab.
##
## ie:
##
##  PS >Get-ChildItem | Add-ExtendedFileProperties.ps1 | 
##          Format-Table Name,"Bit Rate"
##
##############################################################################

begin
{
    ## Create the Shell.Application COM object that provides this
    ## functionality
    $shellObject = New-Object -Com Shell.Application

    ## Store the property names and identifiers for all of the shell
    ## properties
    $itemProperties = @{
        1 = "Size"; 2 = "Type"; 3 = "Date Modified";
        4 = "Date Created"; 5 = "Date Accessed";
        7 = "Status"; 8 = "Owner";
        9 = "Author"; 10 = "Title"; 11 = "Subject";
        12 = "Category"; 13 = "Pages"; 14 = "Comments";
        15 = "Copyright"; 16 = "Artist"; 17 = "Album Title";
        19 = "Track Number"; 20 = "Genre"; 21 = "Duration";
        22 = "Bit Rate"; 23 = "Protected"; 24 = "Camera Model";
        25 = "Date Picture Taken"; 26 = "Dimensions";
        30 = "Company"; 31 = "Description"; 32 = "File Version";
        33 = "Product Name"; 34 = "Product Version" }
}

process
{
    ## Get the file from the input pipeline. If it is just a filename
    ## (rather than a real file,) piping it to the Get-Item cmdlet will
    ## get the file it represents.
    $fileItem = $_ | Get-Item

    ## Don't process directories
    if($fileItem.PsIsContainer)
    {
        $fileItem
        return
    }

    ## Extract the file name and directory name
    $directoryName = $fileItem.DirectoryName
    $filename = $fileItem.Name

    ## Create the folder object and shell item from the COM object
    $folderObject = $shellObject.NameSpace($directoryName)
    $item = $folderObject.ParseName($filename)

    ## Now, go through each property and add its information as a
    ## property to the file we are about to return
    foreach($itemProperty in $itemProperties.Keys)
    {
        $fileItem | Add-Member NoteProperty $itemProperties[$itemProperty] `
            $folderObject.GetDetailsOf($item, $itemProperty)
    }

    ## Finally, return the file with the extra shell information
    $fileItem
}