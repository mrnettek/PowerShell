$wdFormatPDF = 17
$word = New-Object -ComObject word.application
$word.visible = $false
$folderpath = "c:\fso\*"
$fileTypes = "*.docx","*doc"
Get-ChildItem -path $folderpath -include $fileTypes |
foreach-object `
{
 $path =  ($_.fullname).substring(0,($_.FullName).lastindexOf("."))
 "Converting $path to pdf ..."
 $doc = $word.documents.open($_.fullname)
 $doc.saveas([ref] $path, [ref]$wdFormatPDF)
 $doc.close()
}
$word.Quit()

