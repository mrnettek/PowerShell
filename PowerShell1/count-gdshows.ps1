<#
.SYNOPSIS
    Counts the Gratefuld Dead shows in my archives
.DESCRIPTION
    This script looks at my GD archive, and uses folder names to
    determine show type (aud, sbd, etc), and checks to see what
    shows have checked MD5s
.NOTES
    File Name  : count-gdshows.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS C:\foo> count-gdshows.ps1
    Count.ps1 - v 2.0.1
    +---------------------------+
    ! Dead Show Base  :  M:\gd  !
    +---------------------------+

    Grateful Dead Show Summary
    --------------------------
    Total shows:   1146
    Soundboards:   800
    Auds       :   70
    Unknown    :   29
    Partial    :   9
    Broken     :   4
    MD5's check:   489 (42.67 %)
#>
###
# Start of Archive
##

# Constants:
# $GDDiskRoot    - where to find shows
# $DeadShowBase  - folder at top of gd shows

$GDDiskRoot = "M:"
$DeadShowBase   = $GDDiskRoot + "\gd"

# Announce Ourselves
"Count.ps1 - v 2.0.1"
"+---------------------------+"
"! Dead Show Base  :  $DeadShowBase  !"
"+---------------------------+"
""

# Count the Dead shows

$Dir= ls $DeadShowBase  | where {$_.psiscontainer}
$DeadShows=$Dir.count
if ($DeadSHows -le 0) {"no shows found - check constants"}

#Create subsets based on names of the folders
$deadsbds=$dir | where {$_.name -match ".sbd" }
$deadbrkn=$dir | where {$_.name -match "broken" }
$deadpart=$dir | where {$_.name -match "partial" }
$deadauds=$dir | where {$_.name -match ".aud" }
$deadunkw=$dir | where {$_.name -Match ".unk"}

#and see how many have the md5ok's file?

$DeadMD5Checked=0
foreach ($d in $dir)
{ 
  $sn=$d.fullname + "\md5check_ok"
  $md5ok= ls $sn -ea silentlycontinue
  if ($md5ok ) 
     {$DeadMD5Checked++}
}

#Display results

"Grateful Dead Show Summary"
"--------------------------"
"Total shows:   $deadshows"
"Soundboards:   $($deadsbds.count)"
"Auds       :   $($deadauds.count)"
"Unknown    :   $($deadunkw.count)"
"Partial    :   $($deadpart.count)"
"Broken     :   $($deadbrkn.count)"
$DeadPctChecked=($DeadMD5checked/$DeadShows).tostring("P")
"MD5's check:   $DeadMD5checked ($DeadPctChecked)"
""