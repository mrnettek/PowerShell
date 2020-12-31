<#
.SYNOPSIS
    This script Creates then removes a folder using methods in
    System.IO.Directory.
.DESCRIPTION
    This script checks to see if a staticly named folder exists.
    if not, it creates then removes the folder. The creation/deletion
    logic in enclosed within a try/catch block to capture errors.
.NOTES
    File Name  : New-Folder.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2009/10/new-folderps1.html
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/54a0at6s.aspx
.EXAMPLE
    PSH [C:\foo]: .\New-Folder.ps1'
    The directory was created successfully at .
    The directory was deleted successfully.
#>
# Specify the directory to manipulate
$path = "c:\fooxx"
 
# try to see if the dirctory exists (It should not!)
try {
   if ([system.io.Directory]::Exists($path)) {  
                "That path exists already."
				return
    }

# Try to create the directory
$di  = [System.Io.Directory]::CreateDirectory($path)
 
# Get creattion time and display results
$dit = [System.IO.Directory]::GetCreationTime($path)
"The directory was created successfully at {0}." -f $dit
 
# Delete the directory.
  $di.Delete()
  "The directory was deleted successfully."
} 
catch {
            "The process failed"
} 
