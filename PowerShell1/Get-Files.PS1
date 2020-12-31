<#
.SYNOPSIS
    Gets and displays files from a folder
.DESCRIPTION
    Thsi scritp uses the getfiles method to get and display files in a folder
.NOTES
    File Name  : get-autohelp.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PSH [C:\foo]: . 'E:\PowerShellScriptLib\System.IO.Directory\get-files.PS1
    Files in C:\Foo\test
    C:\foo\test\div.xml
    C:\foo\test\foo.txt
    C:\foo\test\foo1.txt
    C:\foo\test\foo1.xls
    C:\foo\test\foo1.xlsx
    C:\foo\test\foo2.txt
    C:\foo\test\shows (Autosaved).xlsx
    C:\foo\test\shows.xlsx
    C:\foo\test\tfl1.xlsx
    C:\foo\test\xlsx1.xlsx
    C:\foo\test\xlsx2.xlsx

    Files in C:\Foo\test\*.txt
    C:\foo\test\foo.txt
    C:\foo\test\foo1.txt
    C:\foo\test\foo2.txt

    Files in C:\Foo\test /s
    C:\foo\test\div.xml
    C:\foo\test\foo.txt
    C:\foo\test\foo1.txt
    C:\foo\test\foo1.xls
    C:\foo\test\foo1.xlsx
    C:\foo\test\foo2.txt
    C:\foo\test\shows (Autosaved).xlsx
    C:\foo\test\shows.xlsx
    C:\foo\test\tfl1.xlsx
    C:\foo\test\xlsx1.xlsx
    C:\foo\test\xlsx2.xlsx    
#>

##
# Start of Script
##
  
# Get all files in C:\Foo\test
"Files in C:\Foo\test"
[system.IO.Directory]::GetFiles("C:\foo\test")
""
 
# Get all files in c:\foo\test\*.txt
"Files in C:\Foo\test\*.txt"
[system.IO.Directory]::GetFiles("C:\foo\test", "*.txt")
""
 
# Get all files in c:\foo\test\*.* /s
"Files in C:\Foo\test /s"
$s = [system.IO.SearchOption]::AllDirectories
[system.IO.Directory]::GetFiles("C:\foo\test\", "*.*",$s)
# End of Script