# MrNetTek
# eddiejackson.net/blog
# 7/30/2019
# free for public use 
# free to claim as your own


# directory to run in
$DocPath = 'C:\PowerShell'
 
# provide a filename, if you want a specific docx
# if not, the script will scan and convert 'all' docx
# files in specified directory above
$DocName = "test.docx"
 
# prevent errors from showing
# $ErrorActionPreference= 'silentlycontinue'
 
# create object
$MSWord = New-Object -ComObject Word.Application
 
clear-host
 
if ($DocName -eq "" ) {
 
# if user did not specify file
Get-ChildItem -Path $DocPath -Filter *.docx | ForEach-Object {
 
    Write-Host "`nScanning directory for docx files...`n"
     
    $Docx = $MSWord.Documents.Open($_.FullName)
 
    # output folder and filename
    $PDF = "$($_.DirectoryName)\$($_.BaseName).pdf"
   
    # convert and save
    $Docx.SaveAs([ref] $PDF, [ref] 17)
     
   }
}
else {
 
# if user specified file
 
    Write-Host "`nUser specified file:" $DocName "`n"
 
    $WorkingPath = "$DocPath\$DocName"
     
    $BaseName = Get-Item "$WorkingPath" | Select-Object -ExpandProperty BaseName    
 
    $Docx = $MSWord.Documents.Open("$WorkingPath")
 
   # output folder and filename
    $PDF = "$DocPath\$BaseName.pdf"
 
   # convert and save
    $Docx.SaveAs([ref] $PDF, [ref] 17)
}
 
 
# clear session
 
$Docx.Close()
$MSWord.Quit()
 
$WorkingPath = ""
$BaseName = ""
$DocPath = ""
$Docx = ""
$PDF = ""
