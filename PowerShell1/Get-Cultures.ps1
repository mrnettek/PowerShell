<#
.SYNOPSIS
    This script displays information of cultures on a system.
.DESCRIPTION
    This script reimplements an MSDN script using PowerShell. It first
    gets the cultures then displays them
.NOTES
    File Name  : Get-Cultures.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://www.pshscripts.blogspot.com
    MSDN sample posted to:
        http://msdn.microsoft.com/en-us/library/system.globalization.cultureinfo.getcultures.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-Cultures.ps1'
    CULTURE ISO ISO WIN DISPLAYNAME                             NATIVENAME
    af       af  afr AFK Afrikaans                               Afrikaans
    am       am  amh AMH Amharic                                 Amharic
    ar       ar  ara ARA Arabic                                  Arabic
    arn      arn arn MPD Mapudungun                              Mapudungun
    as       as  asm ASM Assamese                                Assamese
    az       az  aze AZE Azeri                                   Azeri
    az-Cyrl  az  aze AZC Azeri (Cyrillic)                        Azeri (Cyrillic)
    az-Latn  az  aze AZE Azeri (Latin)                           Azeri (Latin)
    ... snipped to save space!
#>

# Get Cultures
$Cultures = [System.Globalization.CultureInfo]::GetCultures([System.Globalization.CultureTypes]::NeutralCultures)

# Display header then details
"CULTURE ISO ISO WIN DISPLAYNAME                             NATIVENAME"
foreach ($Ci in $Cultures)
      {
"{0,-8} {1,-3} {2,-3} {3,-3} {4,-40}{4,-40}" -f $Ci.Name,
             $Ci.TwoLetterISOLanguageName,
             $Ci.ThreeLetterISOLanguageName,  
			 $Ci.ThreeLetterWindowsLanguageName,
             $Ci.DisplayName,
			 $Ci.NativeName
}
