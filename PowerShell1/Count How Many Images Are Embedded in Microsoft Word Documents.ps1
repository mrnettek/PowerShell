$folder = "c:\fso\*"
$include = "*.doc","*.docx"
$word = new-object -comobject word.application
$word.visible = $false
Get-ChildItem -path $folder -include $include |
ForEach-Object `
{
 $doc = $word.documents.open($_.fullname)
 $_.name + " has " + $doc.inlineshapes.count + " images in the file"
}
 $word.quit()


