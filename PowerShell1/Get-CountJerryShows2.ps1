<#
.SYNOPSIS
    Counts Jerry Garcia live shows on q: drive  
.DESCRIPTION
    I store Jerry Garcia live shows on my Q: drive. This
    script counts the shows by year, and gives a total.
.NOTES
    File Name  : get-countofjerryshows.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS C:\foo> .\get-countofjerryshows
    in: jg_1972_project,    9 shows
    in: jg_1973_project,   39 shows
    in: jg_1974_project,   40 shows
    in: jg_1975_project,   34 shows
    in: jg_1976_project,   52 shows
    in: jg_1977_project,   53 shows
    in: jg_1978_project,   27 shows
    in: jg_1979_project,   31 shows
    in: jg_1980_project,   56 shows
    in: jg_1982_project,   84 shows
    in: jg_1983_project,    3 shows
    in: jg_1984_project,   76 shows
    in: jg_1985_project,   22 shows
    in: jg_1986_project,   25 shows
    in: jg_1989_project,   32 shows
    in: jg_1990_project,    1 shows
    in: jg_1991_project,   64 shows
    in: jg_1992_project,   26 shows
    in: jg_1993_project,    5 shows
    in: jg_1994_project,   36 shows
    in: jg_1995_project,   19 shows
    734 shows in total
#>

##
# Start of Script
##

# Get starting point and move there
$jerry = "n:\Jerry Garcia"
cd $jerry

# Get sub-dirs that contain shows
$dirs = ls | where {$_.Name -match "jg_"}
$allshows = @()

# Now iterate and count
$total = 0
foreach ($dir in $dirs) {
  $shows = ls $dir.FullName
  $allshows += $shows
}

# Start outputting summary
"Jerry Garcia Show Summary"
"-------------------------"
"{0} shows in total" -f ($allshows.count)

# Next, create subsets based on names of the folders
$Jerrysbds = $allshows | where {$_.name -match ".sbd" }
$Jerrybrkn = $allshows | where {$_.name -match "broken" }
$Jerrypart = $allshows | where {$_.name -match "partial" }
$Jerryauds = $allshows | where {$_.name -match ".aud" }
$Jerryunkw = $allshows | where {$_.name -match ".unk"}
$Jerryshnf = $allshows | where {$_.name -match ".shn"}
$Jerryflac = $allshows | where {$_.name -match ".flac"}

# Determine MD5 check
foreach ($show in $allshows) { 
  $sn = $show.fullname + "\md5check_ok"
  $md5ok = Get-ChildItem $sn -ea silentlycontinue
  if ($md5ok) {$JerryMD5Checked++}
  }

# Display results
"Total shows:   {0}" -f $Allshows.count
"Soundboards:   {0}" -f $Jerrysbds.count
"Auds       :   {0}" -f $Jerryauds.count
"Unknown    :   {0}" -f $Jerryunkw.count
"Partial    :   {0}" -f $Jerrypart.count
"Broken     :   {0}" -f $Jerryrkn.count
"SHNs       :   {0}" -f $Jerryshnf.count
"Flac       :   {0}" -f $Jerryflac.count

$PctChecked=($JerryMD5checked/$allshows.count).tostring("P")
"MD5's check:   {0}({1})" -f $JerryMD5Checked, $pctchecked
""