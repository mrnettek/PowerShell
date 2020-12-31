<#
.SYNOPSIS
    This script demonstrates the use of System.Environment
.DESCRIPTION
    This script Uses a variety of the members of System.Environment and is
    a re-write of a MSDN Sample Script
.NOTES
    File Name  : Get-System.Environment
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    This script posted to:
	    http://www.pshscripts.blogspot.com
    MSDN Sample posted at:
	    http://msdn.microsoft.com/en-us/library/system.environment.aspx
.EXAMPLE
    PSH [C:\foo]: .\Get-System.Environment.ps1' foo1 foo2 foo3
    My system drive is C: and my system root is C:\Windows
    -- Environment members --
    CommandLine       : "C:\Users\tfl\Desktop\psp\PowerShellPlus.exe"
    GetCommandLineArgs: C:\Users\tfl\Desktop\psp\PowerShellPlus.exe
    CurrentDirectory  : C:\Users\tfl\Desktop\psp
    ExitCode          : 0
    HasShutdownStarted: False
    MachineName       : COOKHAM8
    NewLine           :
      first line
      second line
      third line
    OSVersion         : Microsoft Windows NT 6.0.6001 Service Pack 1
    StackTrace        : '   at System.Environment.GetStackTrace(Exception e, Boolean needFileInfo)
       at System.Environment.get_StackTrace()
       at getter(Object )
       at System.Management.Automation.DotNetAdapter.PropertyGet(PSProperty property)
       at System.Management.Automation.Adapter.BasePropertyGet(PSProperty property)
       at System.Management.Automation.PSProperty.GetAdaptedValue()
       at System.Management.Automation.PSProperty.get_Value()
       at System.Management.Automation.PropertyReferenceNode.GetValue(PSObject obj, Object property, ExecutionContext context)
       at System.Management.Automation.PropertyReferenceNode.Execute(Array input, Pipe outputPipe, ExecutionContext context)
       at System.Management.Automation.ExpressionNode.Execute(Array input, Pipe outputPipe, ExecutionContext context)
       at System.Management.Automation.ParseTreeNode.Execute(Array input, Pipe outputPipe, ArrayList& resultList, ExecutionContext context)
       at System.Management.Automation.StatementListNode.ExecuteStatement(ParseTreeNode statement, Array input, Pipe outputPipe, ArrayList& resultList, ExecutionContext context)
       at System.Management.Automation.StatementListNode.Execute(Array input, Pipe outputPipe, ArrayList& resultList, ExecutionContext context)
       at System.Management.Automation.ParseTreeNode.Execute(Array input, Pipe outputPipe, ExecutionContext context)
       at System.Management.Automation.ScriptCommandProcessor.ExecuteWithCatch(ParseTreeNode ptn, Array inputToProcess)
       at System.Management.Automation.ScriptCommandProcessor.RunClause(ParseTreeNode clause, Object dollarUnderbar, Object inputToProcess)
       at System.Management.Automation.ScriptCommandProcessor.Complete()
       at System.Management.Automation.CommandProcessorBase.DoComplete()
       at System.Management.Automation.Internal.PipelineProcessor.SynchronousExecuteEnumerate(Object input, Hashtable errorResults, Boolean enumerate)
       at System.Management.Automation.PipelineNode.Execute(Array input, Pipe outputPipe, ArrayList& resultList, ExecutionContext context)
       at System.Management.Automation.StatementListNode.ExecuteStatement(ParseTreeNode statement, Array input, Pipe outputPipe, ArrayList& resultList, ExecutionContext context)
       at System.Management.Automation.StatementListNode.Execute(Array input, Pipe outputPipe, ArrayList& resultList, ExecutionContext context)
       at System.Management.Automation.ParseTreeNode.Execute(Array input, Pipe outputPipe, ExecutionContext context)
       at System.Management.Automation.ScriptCommandProcessor.ExecuteWithCatch(ParseTreeNode ptn, Array inputToProcess)
       at System.Management.Automation.ScriptCommandProcessor.RunClause(ParseTreeNode clause, Object dollarUnderbar, Object inputToProcess)
       at System.Management.Automation.ScriptCommandProcessor.Complete()
       at System.Management.Automation.CommandProcessorBase.DoComplete()
       at System.Management.Automation.Internal.PipelineProcessor.SynchronousExecuteEnumerate(Object input, Hashtable errorResults, Boolean enumerate)
       at System.Management.Automation.Internal.PipelineProcessor.SynchronousExecute(Array input, Hashtable errorResults)
       at System.Management.Automation.Runspaces.LocalPipeline.InvokeHelper()
       at System.Management.Automation.Runspaces.LocalPipeline.InvokeThreadProc()
       at System.Threading.ThreadHelper.ThreadStart_Context(Object state)
       at System.Threading.ExecutionContext.runTryCode(Object userData)
       at System.Runtime.CompilerServices.RuntimeHelpers.ExecuteCodeWithGuaranteedCleanup(TryCode code, CleanupCode backoutCode, Object userData)
       at System.Threading.ExecutionContext.RunInternal(ExecutionContext executionContext, ContextCallback callback, Object state)
       at System.Threading.ExecutionContext.Run(ExecutionContext executionContext, ContextCallback callback, Object state)
       at System.Threading.ThreadHelper.ThreadStart()'
    SystemDirectory   : C:\Windows\system32
    TickCount         : 98385431
    UserDomainName    : COOKHAM
    UserInteractive   : True
    UserName          : tfl
    Version           : 2.0.50727.3074
    WorkingSet        : 49385472
    ExpandEnvironmentVariables:
      My system drive is C: and my system root is C:\Windows
    GetEnvironmentVariable:
      My temporary directory is C:\Users\tfl\AppData\Local\Temp.
    
    GetEnvironmentVariables:
    
    Name                           Value
    ----                           -----
    Path                           C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Program Files (x86)\Microsoft SQL Server\90\Tools\b...
    TEMP                           C:\Users\tfl\AppData\Local\Temp
    SESSIONNAME                    Console
    PATHEXT                        .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.PSC1
    USERDOMAIN                     COOKHAM
    PROCESSOR_ARCHITECTURE         x86
    ProgramW6432                   C:\Program Files
    APPDATA                        C:\Users\tfl\AppData\Roaming
    windir                         C:\Windows
    LOCALAPPDATA                   C:\Users\tfl\AppData\Local
    CommonProgramW6432             C:\Program Files\Common Files
    TMP                            C:\Users\tfl\AppData\Local\Temp
    USERDNSDOMAIN                  COOKHAM.NET
    USERPROFILE                    C:\Users\tfl
    ProgramFiles                   C:\Program Files (x86)
    CommonProgramFiles(x86)        C:\Program Files (x86)\Common Files
    FP_NO_HOST_CHECK               NO
    HOMEPATH                       \Users\tfl
    COMPUTERNAME                   COOKHAM8
    CLASSPATH                      .;C:\Program Files (x86)\Java\jre6\lib\ext\QTJava.zip
    PROCESSOR_ARCHITEW6432         AMD64
    ProgramData                    C:\ProgramData
    NUMBER_OF_PROCESSORS           8
    PROCESSOR_IDENTIFIER           Intel64 Family 6 Model 23 Stepping 6, GenuineIntel
    SystemDrive                    C:
    SystemRoot                     C:\Windows
    ComSpec                        C:\Windows\system32\cmd.exe
    LOGONSERVER                    \\COOKHAM1
    ProgramFiles(x86)              C:\Program Files (x86)
    PSMODULEPATH                   C:\Users\tfl\Documents\WindowsPowerShell\Modules;C:\Windows\SysWOW64\WindowsPowerShell\v1.0\Modules
    CommonProgramFiles             C:\Program Files (x86)\Common Files
    PROCESSOR_LEVEL                6
    PROCESSOR_REVISION             1706
    QTJAVA                         C:\Program Files (x86)\Java\jre6\lib\ext\QTJava.zip
    ALLUSERSPROFILE                C:\ProgramData
    VS90COMNTOOLS                  C:\Program Files (x86)\Microsoft Visual Studio 9.0\Common7\Tools\
    PUBLIC                         C:\Users\Public
    USERNAME                       tfl
    OS                             Windows_NT
    HOMEDRIVE                      C:
    GetFolderPath: C:\Windows\system32
    GetLogicalDrives: C:\, D:\, E:\, F:\, G:\, H:\, I:\, J:\, K:\, L:\, Q:\, X:\
.PARAMETER 
    None, but if any are provided, they are displayed above
#>

##
# Start of Script
##
 
# Setup two variables for later use
[String] $str;
[string] $nl = [System.Environment]::NewLine
 
# Now display members of the environment class 
"-- Environment members --"
#  Assume: You Invoke this sample with an arbitrary set of command line arguments.
"CommandLine       : {0}"   -f [system.environment]::CommandLine
$arguments = [System.Environment]::GetCommandLineArgs()
"GetCommandLineArgs: {0}"   -f [system.string]::join(", ", $arguments)
#  <-- Keep this information secure! -->
"CurrentDirectory  : {0}"   -f [System.Environment]::CurrentDirectory
"ExitCode          : {0}"   -f [System.Environment]::ExitCode
"HasShutdownStarted: {0}"   -f [System.Environment]::HasShutdownStarted
#  <-- Keep this information secure! -->
"MachineName       : {0}"   -f [System.Environment]::MachineName
"NewLine           : {0}  first line{0}  second line{0}  third line" -f [System.Environment]::NewLine
"OSVersion         : {0}"   -f [System.Environment]::OSVersion.ToString()
"StackTrace        : '{0}'" -f [System.Environment]::StackTrace
#  <-- Keep this information secure! -->
"SystemDirectory   : {0}"    -f [System.Environment]::SystemDirectory
"TickCount         : {0}"    -f [System.Environment]::TickCount
#  <-- Keep this information secure! -->
"UserDomainName    : {0}"    -f [System.Environment]::UserDomainName
"UserInteractive   : {0}"    -f [System.Environment]::UserInteractive
#  <-- Keep this information secure! -->
"UserName          : {0}"    -f [System.Environment]::UserName
"Version           : {0}"    -f [System.Environment]::Version.ToString()
"WorkingSet        : {0}"    -f [System.Environment]::WorkingSet
#  No example for exit(exitCode) because doing so would terminate this example.
#  <-- Keep this information secure! -->
$query = "My system drive is %SystemDrive% and my system root is %SystemRoot%";
$str = [System.Environment]::ExpandEnvironmentVariables($query)
"ExpandEnvironmentVariables: {0}  {1}" -f $nl,$str
"GetEnvironmentVariable: {0}  My temporary directory is {1}." -f $nl,[System.Environment]::GetEnvironmentVariable("TEMP")
""
"GetEnvironmentVariables: "
[System.Environment]::GetEnvironmentVariables()
"GetFolderPath: {0}" -f [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::System)
[String[]] $drives = [System.Environment]::GetLogicalDrives()
"GetLogicalDrives: {0}" -f [System.String]::Join(", ", $drives)
#End of Script