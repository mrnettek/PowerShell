<#
.SYNOPSIS
    This script resets the ISE to default colours/actions.
.DESCRIPTION
    This script sets the key values in $PsIse.Options to their default
    options in $Psise.Options.DefaultOPtions. This script is useful if you
    are playing with ISE options and don't quite get it right - just run this 
    script to set things back to default.       
.NOTES
    File Name  : Set-ISEThemeDefault.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0 (ISE only)
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
 .EXAMPLE
    This script when run just resets the theme to the default. To view, run from
    the ISE after changing options!
#>

# Set Basic optionsc
$psise.options.SelectedScriptPaneState = $psise.options.DefaultOptions.SelectedScriptPaneState
$psise.options.ShowToolBar             = $psise.options.DefaultOptions.ShowToolBar
$psise.options.FontSize                = $psise.options.DefaultOptions.FontSize
$psise.options.Fontname                = $psise.options.DefaultOptions.Fontname

# Set Output Pane
$psise.options.OutputPaneBackgroundColor     = $psise.options.DefaultOptions.OutputPaneBackgroundColor
$psise.options.OutputPaneTextBackgroundColor = $psise.options.DefaultOptions.OutputPaneTextBackgroundColor
$psise.options.OutputPaneForegroundColor     = $psise.options.DefaultOptions.OutPutPaneForegroundColor


# set colouring
$psise.options.ErrorForegroundColor          = $psise.options.DefaultOptions.ErrorForegroundColor
$psise.options.ErrorBackgroundColor          = $psise.options.DefaultOptions.ErrorBackgroundColor
$psise.options.WarningForegroundColor        = $psise.options.DefaultOptions.WarningForegroundColor
$psise.options.WarningBackgroundColor        = $psise.options.DefaultOptions.WarningBackgroundColor
$psise.options.VerboseForegroundColor        = $psise.options.DefaultOptions.VerboseForegroundColor
$psise.options.VerboseBackgroundColor        = $psise.options.DefaultOptions.VerboseBackgroundColor
$psise.options.DebugBackgroundColor          = $psise.options.DefaultOptions.DebugBackgroundColor
$psise.options.DebugForegroundColor          = $psise.options.DefaultOptions.DebugForegroundColor

$psise.options.CommandPaneBackgroundColor    = $psise.options.DefaultOptions.CommandPaneBackgroundColor
$psise.options.ScriptPaneBackgroundColor     = $psise.options.DefaultOptions.ScriptPaneBackgroundColor 
$psise.options.ScriptPaneForegroundColor     = $psise.options.DefaultOptions.ScriptPaneForegroundColor 

# More options
$psise.options.ShowWarningForDuplicateFiles  = $psise.options.DefaultOptions.ShowWarningForDuplicateFiles  
$psise.options.ShowWarningBeforeSavingOnRun  = $psise.options.DefaultOptions.ShowWarningBeforeSavingOnRun
$psise.options.UseLocalHelp                  = $psise.options.DefaultOptions.UseLocalHelp
$psise.options.CommandPaneUp                 = $psise.options.DefaultOptions.CommandPaneUp

# Reset Tokens Colors
$psISE.Options.TokenColors['Attribute']          = $psISE.Options.DefaultOptions.TokenColors['Attribute']
$psISE.Options.TokenColors['Command']            = $psISE.Options.DefaultOptions.TokenColors['Command']
$psISE.Options.TokenColors['CommandArgument']    = $psISE.Options.DefaultOPtions.TokenColors['CommandArgument']
$psISE.Options.TokenColors['CommandParameter']   = $psISE.Options.DefaultOptions.TokenColors['CommandParameter']
$psISE.Options.TokenColors['Comment']            = $psISE.Options.DefaultOptions.TokenColors['Comment']
$psISE.Options.TokenColors['GroupEnd']           = $psISE.Options.DefaultOptions.TokenColors['GroupEnd']
$psISE.Options.TokenColors['GroupStart']         = $psISE.Options.DefaultOptions.TokenColors['GroupStart']
$psISE.Options.TokenColors['Keyword']            = $psISE.Options.DefaultOptions.TokenColors['Keyword']
$psISE.Options.TokenColors['LineContinuation']   = $psISE.Options.DefaultOptions.TokenColors['LineContinuation']
$psISE.Options.TokenColors['LoopLabel']          = $psISE.Options.DefaultOptions.TokenColors['LoopLabel']
$psISE.Options.TokenColors['Member']             = $psISE.Options.DefaultOptions.TokenColors['Member']
$psISE.Options.TokenColors['NewLine']            = $psISE.Options.DefaultOptions.TokenColors['NewLine']
$psISE.Options.TokenColors['Number']             = $psISE.Options.DefaultOPtions.TokenColors['Number']
$psISE.Options.TokenColors['Position']           = $psISE.Options.DefaultOptions.TokenColors['Position']
$psISE.Options.TokenColors['StatementSeparator'] = $psISE.Options.DefaultOptions.TokenColors['StatementSeparator']
$psISE.Options.TokenColors['String']             = $psISE.Options.DefaultOptions.TokenColors['String']
$psISE.Options.TokenColors['Type']               = $psISE.Options.DefaultOptions.TokenColors['Type'] 
$psISE.Options.TokenColors['Unknown']            = $psISE.Options.DefaultOptions.TokenColors['Unknown']
$psISE.Options.TokenColors['Variable']           = $psISE.Options.DefaultOptions.TokenColors['Variable']

# Done