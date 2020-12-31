$body = $null
$computer = "localhost"
$System = Get-WmiObject -Class win32_computersystem -ComputerName $computer
$processor = Get-WmiObject -Class win32_processor -ComputerName $computer
$video = Get-WmiObject -Class win32_videocontroller -ComputerName $computer
$disk = [wmi]"\\$computer\root\cimv2:win32_logicaldisk.deviceID='c:'"
$body += "Processor speed " + $processor.CurrentClockSpeed + "<br>"
$body += "Video ram (meg):  " + $video[0].AdapterRAM/1mb + "<br>"
$body += "Free disk space(gig): " + $disk.FreeSpace/1gb + "<br>"
$body += "Make: " + $system.Manufacturer + "<br>"
$body += "Model: " + $system.Model + "<br>"
$body += "Ram(meg): " + [int]$system.TotalPhysicalMemory/1mb
$head =  "<style>"
$head += "BODY{background-color:peachpuff}"
$head += "</style>"
$head += "<h1>System report for $computer </h1><br>"
ConvertTo-Html  -body $body -Head $head|
Out-File -FilePath "C:\fso\$computer.html"


