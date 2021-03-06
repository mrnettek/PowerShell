<#
.SYNOPSIS
    This script sets an ISE Theme for use with Live Writer
.DESCRIPTION
    This script sets the key values in $PsIse.Options to Ones I like!
.NOTES
    File Name  : Set-ISEThemeTFL.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0 (ISE only)
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
 .EXAMPLE
    This script when run resets colours on key panes, including
    colourising tokens in the script pane. Try it and see it...
#>

# PowerShell ISE theme for copying into Live Writer

# Set font name and size
$psISE.Options.FontName = 'Courier New'
$psISE.Options.FontSize = 12

# Set colours for output pane
$psISE.Options.OutputPaneBackgroundColor     = 'White'
$psISE.Options.OutputPaneTextBackgroundColor = 'White'
$psISE.Options.OutputPaneForegroundColor     = 'DarkBlue'
$psise.options.ErrorBackgroundColor          = 'White'
$psise.options.WarningBackgroundColor        = 'Green'

# Set colours for command pane
$psISE.Options.CommandPaneBackgroundColor    = 'white'

# Set colours for script pane

$psise.options.ScriptPaneBackgroundColor     = 'white'

# Set colours for tokens in Script Pane
$psISE.Options.TokenColors['Attribute']          = 'Firebrick'
$psISE.Options.TokenColors['Command']            = 'Blue'
$psISE.Options.TokenColors['CommandArgument']    = 'cadetblue'
$psISE.Options.TokenColors['CommandParameter']   = 'cadetblue'
$psISE.Options.TokenColors['Comment']            = 'brown'
$psISE.Options.TokenColors['GroupEnd']           = 'Black'
$psISE.Options.TokenColors['GroupStart']         = 'Black'
$psISE.Options.TokenColors['Keyword']            = 'firebrick'
$psISE.Options.TokenColors['LineContinuation']   = 'dodgerblue'
$psISE.Options.TokenColors['Member']             = 'darkblue'
$psISE.Options.TokenColors['NewLine']            = '#FFFFFFFF'
$psISE.Options.TokenColors['Number']             = 'darkgreen'
$psISE.Options.TokenColors['Position']           = '#FFFFFFFF'
$psISE.Options.TokenColors['StatementSeparator'] = 'Purple'
$psISE.Options.TokenColors['String']             = 'DarkRed'
$psISE.Options.TokenColors['Type']               = 'Black'
$psISE.Options.TokenColors['Unknown']            = 'Red'
$psISE.Options.TokenColors['Variable']           = 'darkcyan'
