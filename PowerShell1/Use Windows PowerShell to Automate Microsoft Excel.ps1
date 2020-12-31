$a = New-Object -comobject Excel.Application

$a.Visible = $True

$b = $a.Workbooks.Add()
$c = $b.Worksheets.Item(1)

$c.Cells.Item(1,1) = "A value in cell A1."
$b.SaveAs("C:\Scripts\Test.xls")

$a.Quit()
  


