<#
.SYNOPSIS
    This script displays the WMI objects associated with a folder
.DESCRIPTION
    This script uses the Associators Of query
.NOTES
    File Name  : get-folderobjects.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
.EXAMPLE
    Get-FolderObjects "C:\Foo"
        what's in C:\foo
    0 Volume objects
    0 Logical Disk objects
    10 Directory objects
    171 File objects
    0 Pagefile objects
    1 Security Settings
    0 Share objects
    0 other objects
.EXAMPLE
    Get-FolderObjects "C:\"
      what's in C:\
    1 Volume objects
    1 Logical Disk objects
    18 Directory objects
    8 File objects
    1 Pagefile objects
    1 Security Settings
    1 Share objects
    0 other objects  
#>
# Function to get folder WMI object associations
# Define funtion
Function Get-FolderObjects {
Param (
$Folder  =   "c:\"
)

# Set query then get associations
$query  = "ASSOCIATORS OF {Win32_Directory.Name='$folder'}"
$objs = Gwmi -q $query
#   
# Now group them
# Create empty arrays
$directory = @()
$datafile  = @()
$pagefile  = @()
$volume    = @()
$filesec   = @()
$share     = @()
$Logdisk   = @()
$unknown   = @()

# Now fill the arrays
foreach ($obj in $objs) {
    switch  ($Obj.__class) {
      "Win32_Directory"   {$directory += $obj; break}
      "Cim_DataFile"      {$datafile  += $obj; break}
      "Win32_PageFile"    {$pagefile  += $obj; break}
      "Win32_Volume"      {$volume    += $obj; break}
      "Win32_LogicalDisk" {$logdisk   += $obj; break} 
      "Win32_LogicalFileSecuritySetting" {$filesec += $obj; break}
      "Win32_share"       {$share     += $obj; break}
      default             {$unknown   += $obj; break}
    }
}

# Display the output
" what's in $folder"
"{0} Volume objects"        -f $volume.count
"{0} Logical Disk objects"  -f $logdisk.count
"{0} Directory objects"     -f $directory.count
"{0} File objects"          -f $datafile.count
"{0} Pagefile objects"      -f $pagefile.count
"{0} Security Settings"     -f $filesec.count
"{0} Share objects"         -f $share.count
"{0} other objects"         -f $unknown.count
}

# Here call function as an example
Get-FolderObjects "C:\"
"***"
Get-FolderObjects "C:\foo"