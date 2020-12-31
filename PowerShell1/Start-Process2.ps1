<#
.SYNOPSIS
    This script starts up a process using System.Diagnostics.Process 
.DESCRIPTION
    This script creates 7 occurences of IExplore.exe, using
    diffrent start up options, based on a sample script in MSDN.
.NOTES
    File Name  : Start-process2.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/0w4h05yb.aspx
.EXAMPLE
    PSH [C:\foo]: .\Start-Process2.ps1'
    Starting IE at home page (p1)
    Opening Favourites (p2)
    Opening PSHScripts (p3)
    Opening c:\foo\myfile.htm (p4)
    Opening c:\foo\myfile.asp (p5)
    Opening with Start info (p6)
    Opening with startinfo + www.reskit.net (p7)
.PARAMETER bar
#>

# Helper Functions

# Opens the Internet Explorer application.
function OpenApplication {
param([string] $FavoritesPath)
# Start Internet Explorer. Defaults to the home page.
"Starting IE at home page (p1)"
$proc1 = [System.Diagnostics.Process]::start("IExplore.exe");
# Display the contents of the favorites folder in the browser.
"Opening Favourites (p2)"
$proc2=[System.Diagnostics.Process]::Start($FavoritesPath);
}

# Opens urls and .html documents using Internet Explorer.
function OpenWithArguments { 
# url's are not considered documents. They can only be opened
# by passing them as arguments.
"Opening PSHScripts (p3)"
$proc3 = [System.Diagnostics.Process]::Start("IExplore.exe", "www.pshscripts.blogspot.com")

# Start a Web page using a browser associated with .html and .asp files.
"Opening c:\foo\myfile.htm (p4)"
$proc4 = [System.Diagnostics.Process]::Start("IExplore.exe", "C:\foo\myFile.htm")
"Opening c:\foo\myfile.asp (p5)"
$proc5 = [System.Diagnostics.Process]::Start("IExplore.exe", "C:\foo\myFile.asp")
}

# Uses the ProcessStartInfo class to start new processes,
# both in a minimized mode.
function OpenWithStartInfo {
$StartInfo = New-Object System.Diagnostics.ProcessStartInfo "IExplore.exe"
$StartInfo.WindowStyle = [System.Diagnostics.ProcessWindowStyle]::Minimized;
"Opening with Start info (p6)"
$proc6 = [System.Diagnostics.Process]::Start($StartInfo)
"Opening with startinfo + www.reskit.net (p7)"
$StartInfo.Arguments = "www.reskit.net";
$proc7 = [System.Diagnostics.Process]::Start($startInfo)
}

##
# Start of script
##

# First, get Favourites path
$FavoritesPath = [system.Environment]::GetFolderPath('Favorites')

# Open two windows - one pointing to IE's home page, the other
# to my favourites folder (p1, p2)
OpenApplication $FavoritesPath

# Here call function to open pshscripts, c:\foo\myfile.htm c:\foo\myfile.asp
#p3, p3, p5
OpenWithArguments

#Here open two processes using Startinfo object
# p6, p7
OpenWithStartInfo
#End of script