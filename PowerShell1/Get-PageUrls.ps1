##############################################################################
##
## Get-PageUrls.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Parse all of the URLs out of a given file.
##
## Example:
##    Get-PageUrls microsoft.html http://www.microsoft.com
##
##############################################################################
param(
        ## The filename to parse
	[string] $filename = $(throw "Please specify a filename."),
	
	## The URL from which you downloaded the page.
	## For example, http://www.microsoft.com
	[string] $base = $(throw "Please specify a base URL."),
	
	## The Regular Expression pattern with which to filter 
	## the returned URLs
	[string] $pattern = ".*"
     )          

## Load the System.Web DLL so that we can decode URLs
[void] [Reflection.Assembly]::LoadWithPartialName("System.Web")
     
## Defines the regular expression that will parse an URL
## out of an anchor tag.  
$regex = "<\s*a\s*[^>]*?href\s*=\s*[`"']*([^`"'>]+)[^>]*?>"

## Parse the file for links
function Main
{
   ## Do some minimal source URL fixups, by switching backslashes to
   ## forward slashes
   $base = $base.Replace("\", "/")

   if($base.IndexOf("://") -lt 0)
   { 
      throw "Please specify a base URL in the form of " +
        "http://server/path_to_file/file.html" 
   }

   ## Determine the server from which the file originated.  This will
   ## help us resolve links such as "/somefile.zip"
   $base = $base.Substring(0,$base.LastIndexOf("/") + 1)
   $baseSlash = $base.IndexOf("/", $base.IndexOf("://") + 3)
   $domain = $base.Substring(0, $baseSlash)


   ## Put all of the file content into a big string, and
   ## get the regular expression matches
   $content = [String]::Join(' ', (get-content $filename))
   $contentMatches = @(GetMatches $content $regex)

   foreach($contentMatch in $contentMatches)
   {
      if(-not ($contentMatch -match $pattern)) { continue }

      $contentMatch = $contentMatch.Replace("\", "/")

      ## Hrefs may look like:
      ## ./file
      ## file
      ## ../../../file
      ## /file
      ## url
      ## We'll keep all of the relative paths, as they will resolve.
      ## We only need to resolve the ones pointing to the root.
      if($contentMatch.IndexOf("://") -gt 0)
      {
         $url = $contentMatch
      }
      elseif($contentMatch[0] -eq "/")
      {
         $url = "$domain$contentMatch"
      }
      else
      {
         $url = "$base$contentMatch"
         $url = $url.Replace("/./", "/")
      }

      ## Return the URL, after first removing any HTML entities
      [System.Web.HttpUtility]::HtmlDecode($url)
   }
}

function GetMatches([string] $content, [string] $regex)
{
   $returnMatches = new-object System.Collections.ArrayList

   ## Match the regular expression against the content, and
   ## add all trimmed matches to our return list
   $resultingMatches = [Regex]::Matches($content, $regex, "IgnoreCase")
   foreach($match in $resultingMatches) 
   {
      $cleanedMatch = $match.Groups[1].Value.Trim()
      [void] $returnMatches.Add($cleanedMatch)
   }

   $returnMatches   
}

. Main