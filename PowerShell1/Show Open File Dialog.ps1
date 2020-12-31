[void] [Reflection.Assembly]::LoadWithPartialName( 'System.Windows.Forms' )

function Select-File( [string]$initialDirectory=$pwd, [switch]$multiselect ) {
  $dialog = New-Object Windows.Forms.OpenFileDialog
  $dialog.ShowHelp = $true
  $dialog.InitialDirectory = $initialDirectory
  $dialog.Multiselect = $multiselect

  if( $dialog.ShowDialog( ) -eq 'OK' ) { $dialog.FileNames }
  $dialog.Dispose( )
}

Select-File "C:\"
