<#
.SYNOPSIS
    This script displays the installed Speech Synthesiser voices
.DESCRIPTION
    This script first loads the System.Speech DLL, then
    creates a new SpeechSynthesizer object. It uses this
    object to enumerate the installed speech voices.
.NOTES
    File Name  : Get-InstalledVoice.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.speech.synthesis.installedvoice%28VS.90%29.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-InstalledVoice.ps1

    Gender                : Female
    Age                   : Adult
    Name                  : Microsoft Anna
    Culture               : en-US
    Id                    : MS-Anna-1033-20-DSK
    Description           : Microsoft Anna - English (United States)
    SupportedAudioFormats : {System.Speech.AudioFormat.SpeechAudioFormatInfo}
    AdditionalInfo        : {[Age, Adult], [AudioFormats, 18], [Gender, Female], [Language, 409]...}
#>
#
# First load the dll
$r = [system.Reflection.Assembly]::LoadWithPartialName("system.speech")

# Create a speech synthesizer object and enumerate voices
$spk = New-Object system.Speech.Synthesis.SpeechSynthesizer
$spk.GetInstalledVoices() | %{$_.voiceinfo}