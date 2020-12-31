<#
.SYNOPSIS
    Demonstrates the static properties on System.Environment
.DESCRIPTION
    This script uses the System.Environment class to retrieve interesting
	information about your system. The fields returned are static fields 
	on the System.Environment class.
.NOTES
    File Name  : Get-System.EnvironmentStaticProperties1.ps1
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
    PS c:\Foo> .\Get-System.EnvironmentStaticProperties1.ps1
    Static properties in [System.Environment]
       TypeName: System.Environment

    Name               MemberType Definition
    ----               ---------- ----------
    CommandLine        Property   static System.String CommandLine {get;}
    CurrentDirectory   Property   static System.String CurrentDirectory {get;set;}
    ExitCode           Property   static System.Int32 ExitCode {get;set;}
    HasShutdownStarted Property   static System.Boolean HasShutdownStarted {get;}
    MachineName        Property   static System.String MachineName {get;}
    NewLine            Property   static System.String NewLine {get;}
    OSVersion          Property   static System.OperatingSystem OSVersion {get;}
    ProcessorCount     Property   static System.Int32 ProcessorCount {get;}
    StackTrace         Property   static System.String StackTrace {get;}
    SystemDirectory    Property   static System.String SystemDirectory {get;}
    TickCount          Property   static System.Int32 TickCount {get;}
    UserDomainName     Property   static System.String UserDomainName {get;}
    UserInteractive    Property   static System.Boolean UserInteractive {get;}
    UserName           Property   static System.String UserName {get;}
    Version            Property   static System.Version Version {get;}
    WorkingSet         Property   static System.Int64 WorkingSet {get;}
    
    Static Property values for [System.Environment]
    CommandLine:       : "C:\Users\tfl\Desktop\psp\PowerShellPlus.exe"
    CurrentDirectory   : C:\Users\tfl\Desktop\psp
    ExitCode           : 0
    HasShutdownStarted : False
    MchineName         :
    NewLine            :


    OSVersion          : Microsoft Windows NT 6.0.6001 Service Pack 1
    ProcessorCount     : 8
    SystemDirctory     : C:\Windows\system32
    TickCount          : 261135752
    UserDomainName     : COOKHAM
    UserInteractive    : True
    UserName           : tfl
    Version            : 2.0.50727.1434

	Stack Trace
	        { Snipped - Left as an exercise for the reader...}
#>

###
#  Start Script
##

# Get and display statics in system.environment class
"Static properties in [System.Environment]"
[System.Environment] | Get-Member -Static -MemberType properties

# Now display the values of the simple static properties
"";"Static Property values for [System.Environment]"
"CommandLine:       : {0}" -f [System.Environment]::CommandLine
"CurrentDirectory   : {0}" -f [System.Environment]::CurrentDirectory
"ExitCode           : {0}" -f [System.Environment]::ExitCOde
"HasShutdownStarted : {0}" -f [System.Environment]::HasShutdownStarted
"MchineName         : {0}" -f [System.Environment]::MachineNam
"NewLine            : {0}" -f [System.Environment]::NewLine
"OSVersion          : {0}" -f [System.Environment]::OSVersion
"ProcessorCount     : {0}" -f [System.Environment]::ProcessorCount
"SystemDirctory     : {0}" -f [System.Environment]::SystemDirectory
"TickCount          : {0}" -f [System.Environment]::TickCount
"UserDomainName     : {0}" -f [System.Environment]::UserDomainName
"UserInteractive    : {0}" -f [System.Environment]::UserInteractive
"UserName           : {0}" -f [System.Environment]::UserName
"Version            : {0}" -f [System.Environment]::Version
"WorkingSet         : {0}" -f [System.Environment]::WorkingSet  

# Here is the stack trace:
"";"Stack Trace:"
[System.Environment]::StackTrace
# End of Script