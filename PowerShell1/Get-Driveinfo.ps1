<#
.SYNOPSIS
    This script gets and displays basic information about drives on a local system. 
.DESCRIPTION
    This script uses the System.Io.DriveInfo's GetDrives method to get drive
    info which is then displayed.	This is a re-implementation of an MSDN
    sample.
.NOTES
    File Name  : Get-DriveInfo.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://pshscripts.blogspot.com/2010/07/get-driveinfops1.html 
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.io.driveinfo.aspx
        http://msdn.microsoft.com/en-us/library/system.io.driveinfo.getdrives.aspx
.EXAMPLE
   PSH [C:\foo]: .\Get-DriveIinfo.ps1'
   Drive C:\
      File type: Fixed
      Volume label:
      File system: NTFS
      Available space to current user:           6.75 gb
      Total available space:                     6.75 gb
      Total size of drive:                     48.828 gb
   Drive D:\
 	  File type: Fixed
      Volume label:
      File system: FAT32
      Available space to current user:           1.81 gb
      Total available space:                     1.81 gb
      Total size of drive:                      2.003 gb
	  <ETC...>
#>

# Get Drive Info
$allDrives = [system.Io.DriveInfo]::GetDrives()

# Now display details
foreach ($d in $allDrives)  {
    "Drive {0}"        -f $d.Name
    "  File type: {0}" -f $d.DriveType
    if ($d.IsReady)  {
         "  Volume label: {0}" -f $d.VolumeLabel
         "  File system: {0}"  -f $d.DriveFormat
		 $fs  = $d.AvailableFreeSpace/1gb
		 $tfs = $d.TotalFreeSpace/1gb
		 $TS  = $d.TotalSize/1gb
         "  Available space to current user:{0, 15:n2} gb" -f $fs
         "  Total available space:          {0, 15:n2} gb" -f $tfs
         "  Total size of drive:            {0, 15:n3} gb" -f $ts
	}
}
