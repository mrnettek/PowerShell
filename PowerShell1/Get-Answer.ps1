##############################################################################
##
## Get-Answer.ps1
##
## From Windows PowerShell Cookbook (O'Reilly)
## by Lee Holmes (http://www.leeholmes.com/guide)
##
## Use Encarta's Instant Answers to answer your question
##
## Example:
##    Get-Answer "What is the population of China?"
##############################################################################
param([string] $question = $( throw "Please ask a question."))

function Main
{
    ## Load the System.Web.HttpUtility DLL, to let us URLEncode
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Web")

    ## Get the web page into a single string with newlines between
    ## the lines.
    $encoded = [System.Web.HttpUtility]::UrlEncode($question)
    $url = "http://search.live.com/results.aspx?q=$encoded"
    $text = (new-object System.Net.WebClient).DownloadString($url)

    ## Get the answer with annotations
    $startIndex = $text.IndexOf('<span class="answer_header">')
    $endIndex = $text.IndexOf('<h2 class="hide">Results</h2>')

    ## If we found a result, then filter the result
    if(($startIndex -ge 0) -and ($endIndex -ge 0))
    {
       $partialText = $text.Substring($startIndex, $endIndex - $startIndex)

       ## Very fragile screen scraping here
       $pattern = '<script.+?<div (id="results"|class="answer_fact_body")>'
       $partialText = $partialText -replace $pattern,"`n"
       $partialText = $partialText -replace '<span class="attr.?.?.?">',"`n"
       $partialText = $partialText -replace '<BR ?/>',"`n"

       $partialText = clean-html $partialText
       $partialText = $partialText -replace "`n`n", "`n"

       "`n" + $partialText.Trim()
    }
    else
    {
       "`nNo answer found."
    }
}

## Clean HTML from a text chunk
function clean-html ($htmlInput)
{
    $tempString = [Regex]::Replace($htmlInput, "<[^>]*>", "")
    $tempString.Replace("&nbsp&nbsp", "")
}

. Main