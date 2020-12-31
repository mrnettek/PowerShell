<#
.SYNOPSIS
    This script displays the MAPI namespace in the current 
    Outlook Profile.
.DESCRIPTION
    This script creates and Outlook.application object,
    then gets and displays the top level folders in the store, and
    the folders one level below. 	 
.NOTES
    File Name  : Get-OutlookFolders.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: .\Get-OutLookFolders.PS1'
    3 Top Level Folders:
       Mailbox - Thomas Lee
       Public Folders
       Archive Folders

    Folder 'Mailbox - Thomas Lee' contains the following subfolders:
       Deleted Items
	   Grateful Dead
       Inbox
       Outbox
       Sent Items
       Calendar
       Contacts
       Drafts
       Journal
       Junk E-mail
       Notes
       Quarantine
       RSS Feeds
       Sync Issues
       Tasks
       Conversation Action Settings
       Quick Step Settings
       Suggested Contacts
    Folder 'Public Folders' contains the following subfolders:
       Favorites
       All Public Folders
    Folder 'Archive Folders' contains the following subfolders:
       Deleted Items
       Sent Items
       Calendar
       Journal
       Tasks
#>

## 
# Start of Script
##

# First create Outlook object and get the Mapi namespace.
$Outlook = New-Object -com Outlook.Application
$Namespace = $outlook.GetNamespace("MAPI")

# Now display top level folders
"{0} Top Level Folders:      " -f $Namespace.folders.count
foreach ($Fl in $namespace.Folders) {
  "   {0}" -f $Fl.Name}
""
# Now look inside
foreach ($Folder in $Namespace.Folders) {
"Folder `'{0}`' contains the following subfolders: " -f $Folder.Name
  foreach ($fl in $Folder.Folders){
  "   {0}" -f $Fl.Name
  }
} 
# end of script