$a = get-wmiobject win32_process | where-object {$_.name -eq "notepad.exe"}
$a.terminate()
