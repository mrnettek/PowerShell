<#
.SYNOPSIS
    This script displays information returned from the 
    file version object.
.DESCRIPTION
    This script gets, then displays, all the information returned
    from the System.Diagnostics.Fileinfo of Notepad
.NOTES
    File Name  : Show-FileInformation.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
        http://http://pshscripts.blogspot.com
    MSDN sample posted to:
         
.EXAMPLE
    Psh> .\Show-FileInformation.ps1
    File Major Part for C:\Windows\system32\Notepad.exe is: 6            
#>
# Set filename
$File = [System.Environment]::SystemDirectory + "\Notepad.exe"

#Get Version information for this file
$myFileVersionInfo = [System.Diagnostics.FileVersionInfo]::GetVersionInfo($File)

# Display all the file information:
"FileInfo information for {0}" -f $file
"Comments           : {0}"  -f $myFileVersionInfo.Comments
"Company Name       : {0}"  -f $myFileVersionInfo.CompanyName
"FileBuldPart       : {0}"  -f $myFileVersionInfo.FileBuildPart
"FileDescription    : {0}"  -f $myFileVersionInfo.FileDescription
"FileMajorPart      : {0}"  -f $myFileVersionInfo.FileMajorPart
"FileMinorPart      : {0}"  -f $myFileVersionInfo.FileMinorPart
"FilePrivatePart    : {0}"  -f $myFileVersionInfo.FilePrivatePart
"FileName           : {0}"  -f $myFileVersionInfo.FileName 
"FileVersion        : {0}"  -f $myFileVersionInfo.FileVersion
"InternalName       : {0}"  -f $myFileVersionInfo.InternalName
"IsDebug            : {0}"  -f $myFileVersionInfo.IsDebug
"IsPatched          : {0}"  -f $myFileVersionInfo.IsPatched
"IsPreRelease       : {0}"  -f $myFileVersionInfo.IsPreRelease
"IsPrivateBuild     : {0}"  -f $myFileVersionInfo.IsPrivateBuild
"IsSpecialBuild     : {0}"  -f $myFileVersionInfo.IsSpecialBuild
"Language           : {0}"  -f $myFileVersionInfo.Language
"LegalCopyright     : {0}"  -f $myFileVersionInfo.LegalCopyright
"LegalTrademarks    : {0}"  -f $myFileVersionInfo.LegalTrademarks
"OriginalFilename   : {0}"  -f $myFileVersionInfo.OriginalFilename
"PrivateBuild       : {0}"  -f $myFileVersionInfo.PrivateBuild
"ProductBuildPart   : {0}"  -f $myFileVersionInfo.ProductBuildPart
"ProductMajordPart  : {0}"  -f $myFileVersionInfo.ProductMajorPart
"ProductMinorPart   : {0}"  -f $myFileVersionInfo.ProductMinorPart
"ProductName        : {0}"  -f $myFileVersionInfo.ProductName
"ProductPrivatePart : {0}"  -f $myFileVersionInfo.ProductMinorPart
"ProductVersion     : {0}"  -f $myFileVersionInfo.ProductVersion
"SpecialBuild       : {0}"  -f $myFileVersionInfo.SpecialBuild









