$computers = "localhost"
$classes = "Win32_Printer", "Win32_TcpIpPrinterPort", "Win32_Share"
$file = "C:\fso\printers.txt"
Foreach($computer in $computers)
{
 Foreach($class in $classes)
 { 
  if($class -eq "win32_share")
     { 
       Get-WmiObject -class $class -filter "type = 1" >> $file
     }
     ELSE
      {
       Get-WmiObject -class $class >> $file
      }
 } #end foreach class
} #end foreach computer
notepad $file

