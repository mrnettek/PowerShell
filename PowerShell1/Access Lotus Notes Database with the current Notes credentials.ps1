### Author: Boris Toll / 2009

$ErrorActionPreference	= 0

$NotesSessionType = [System.Type]::GetTypeFromProgID("Notes.NotesSession")
$NotesSession = [system.Activator]::CreateInstance($NotesSessionType)

############################################### Edit Start

#Lotus Notes Server
$sNotesServer = ""

#Lotus Notes Database Path (*.nsf)
$sNotesDatabase	= ""

#Lotus Notes View (Name)
$sNotesView = ""

#Items to get from the documents (Sample: "OriginalModTime","From")
[Array]$sGetItems = ""

############################################### Edit End


$mArgs = $sNotesServer,$sNotesDatabase
$NotesDatabase = $NotesSession.GetType().InvokeMember("GetDatabase", [System.Reflection.BindingFlags]::InvokeMethod, $null, $NotesSession, $mArgs)
$NotesDatabaseTitle = $NotesDatabase.GetType().InvokeMember("Title", [System.Reflection.BindingFlags]::GetProperty, $null, $NotesDatabase, $null)
$NotesDatabaseTitle

$mArgs = $sNotesView
$NotesView = $NotesDatabase.GetType().InvokeMember("GetView", [System.Reflection.BindingFlags]::InvokeMethod, $null,$NotesDatabase, $mArgs)
$NotesDoc = $NotesView.GetType().InvokeMember("GetFirstDocument", [System.Reflection.BindingFlags]::InvokeMethod, $null, $NotesView, $null)


while ($NotesDoc -ne $null)
{

$mArgs = "`$Conflict"
$NotesDocConflict = $NotesDoc.GetType().InvokeMember("HasItem", [System.Reflection.BindingFlags]::GetProperty, $null, $NotesDoc, $mArgs)

	if($NotesDocConflict -eq $false)
	{
		$NotesDocValue = ""

		foreach ($item in $sGetItems) 

		{
			$mArgs = $item
			$NotesDocHasItem = $NotesDoc.GetType().InvokeMember("HasItem", [System.Reflection.BindingFlags]::GetProperty, $null, $NotesDoc, $mArgs)

			if($NotesDocHasItem -eq $True)
			{
				$mArgs = $item
				[String]$NotesDocValue = $NotesDocValue + $NotesDoc.GetType().InvokeMember("GetItemValue", [System.Reflection.BindingFlags]::InvokeMethod, $null, $NotesDoc, $mArgs) + ";"
			}
		}
		if($NotesDocValue -gt ""){$NotesDocValue}
		
	}
	$NotesDoc = $NotesView.GetType().InvokeMember("GetNextDocument", [System.Reflection.BindingFlags]::GetProperty, $null, $NotesView, $NotesDoc)
}

