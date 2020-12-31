<#
.SYNOPSIS
    This script lists the special folders enumerated in System.Environment.SpecialFolder
.DESCRIPTION
    This script first enumerates the SpecialFolder Enum. for each member, the script
	then looks up, and displays, the value of that folder.
.NOTES
    File Name  : Get-SpecialFolders.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.environment.specialfolder.aspx
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.Environment\Get-SpecialFolders.PS1'
    Folder Name            Path
    -----------            -----------------------------------------------
    Desktop                C:\Users\tfl\Desktop
    Programs               C:\Users\tfl\AppData\Roaming\Microsoft\Windows\Start Menu\Programs
    Personal               C:\Users\tfl\Documents
    Personal               C:\Users\tfl\Documents
    Favorites              C:\Users\tfl\NetHood\Favorites
    Startup                C:\Users\tfl\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
    Recent                 C:\Users\tfl\AppData\Roaming\Microsoft\Windows\Recent
    SendTo                 C:\Users\tfl\AppData\Roaming\Microsoft\Windows\SendTo
    StartMenu              C:\Users\tfl\AppData\Roaming\Microsoft\Windows\Start Menu
    MyMusic                C:\Users\tfl\Music
    DesktopDirectory       C:\Users\tfl\Desktop
    MyComputer
    Templates              C:\Users\tfl\AppData\Roaming\Microsoft\Windows\Templates
    ApplicationData        C:\Users\tfl\AppData\Roaming
    LocalApplicationData   C:\Users\tfl\AppData\Local
    InternetCache          C:\Users\tfl\AppData\Local\Microsoft\Windows\Temporary Internet Files
    Cookies                C:\Users\tfl\AppData\Roaming\Microsoft\Windows\Cookies
    History                C:\Users\tfl\AppData\Local\Microsoft\Windows\History
    CommonApplicationData  C:\ProgramData
    System                 C:\Windows\system32
    ProgramFiles           C:\Program Files (x86)
    MyPictures             C:\Users\tfl\Pictures
    CommonProgramFiles     C:\Program Files (x86)\Common Files
#>

##
# Start of Script
##

# Get the list of special folders
$folders = [system.Enum]::GetValues([System.Environment+SpecialFolder]) 

# Display these folders
"Folder Name            Path"
"-----------            -----------------------------------------------"
foreach ($folder in $folders) {
"{0,-22} {1,-15}"  -f $folder,[System.Environment]::GetFolderPath($folder)
}
#End of Script