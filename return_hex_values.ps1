# MrNetTek
# eddiejackson.net/blog
# 9/15/2019
# free for public use 
# free to claim as your own


function Get-HexValues
{
[CmdletBinding()] Param
(
[Parameter(Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
[Alias("FullName","FilePath")] $Path,
[Int] $Width = 16,
[Int] $Count = -1,
[String] $PlaceHolder = ".",
[Switch] $NoOffset,
[Switch] $NoText
)
  
$linecounter = 0 
#$placeholder = "." 
get-content $path -encoding byte -readcount $width -totalcount $count |
foreach-object `
{
$paddedhex = $text = $null
$bytes = $_
foreach ($byte in $bytes)`
{
$byteinhex = [String]::Format("{0:X}", $byte) 
$paddedhex += $byteinhex.PadLeft(2,"0") + " "
}
 
if ($paddedhex.length -lt $width * 3)
{ $paddedhex = $paddedhex.PadRight($width * 3," ") }
foreach ($byte in $bytes)`
{
if ( [Char]::IsLetterOrDigit($byte) -or
[Char]::IsPunctuation($byte) -or
[Char]::IsSymbol($byte) )
{ $text += [Char] $byte }
else
{ $text += $placeholder }
}
$offsettext = [String]::Format("{0:X}", $linecounter) 
$offsettext = $offsettext.PadLeft(8,"0") + "h:"
$linecounter += $width # Increment linecounter.
if (-not $NoOffset) { $paddedhex = "$offsettext $paddedhex" }
if (-not $NoText) { $paddedhex = $paddedhex + $text }
$paddedhex
}
}
Get-HexValues C:\PowerShell\foo1.exe
