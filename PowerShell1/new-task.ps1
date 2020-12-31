<#
.SYNOPSIS
    This script creates a scheduled task object.
.DESCRIPTION
    This script re-implements an MSDN sample using PowerShell.
.NOTES
    File Name  : New-Task.ps1
    Author     : Thomas Lee - tfl@psp.co.uk
    Requires   : PowerShell Version 2.0
.LINK
    This script posted to:
	    http://pshscripts.blogspot.com/2010/09/new-taskps1.html
    MSDN sample posted tot:
	    http://msdn.microsoft.com/en-us/library/aa383665%28VS.85%29.aspx
.EXAMPLE
    PSH [C:\foo]: . 'C:\Users\tfl\AppData\Local\Temp\Untitled6.ps1'
    Time Now       : 9/24/2010 12:43:47 PM
    Task startTime : 2010-09-24T12:44:17
    Task endTime   : 2010-09-24T12:48:47
    Task definition created. About to submit the task...
 
 
    Name               : Test TimeTrigger
    Path               : Test TimeTrigger
    State              : 3
    Enabled            : True
    LastRunTime        : 12/30/1899 12:00:00 AM
    LastTaskResult     : 1
    NumberOfMissedRuns : 0
    NextRunTime        : 9/24/2010 12:44:17 PM
    Definition         : System.__ComObject
    Xml                : <?xml version="1.0" encoding="UTF-16"?>
                         <Task version="1.2" xmlns="http://schemas.microsoft.com/windows/2004/02/mit/task">
                           <RegistrationInfo>
                             <Author>Thomas Lee</Author>
                             <Description>Start notepad at a certain time</Description>
                           </RegistrationInfo>
                           <Triggers>
                             <TimeTrigger id="TimeTriggerId">
                               <StartBoundary>2010-09-24T12:44:17</StartBoundary>
                               <EndBoundary>2010-09-24T12:48:47</EndBoundary>
                               <ExecutionTimeLimit>PT5M</ExecutionTimeLimit>
                               <Enabled>true</Enabled>
                             </TimeTrigger>
                           </Triggers>
                           <Settings>
                             <IdleSettings>
                               <Duration>PT10M</Duration>
                               <WaitTimeout>PT1H</WaitTimeout>
                               <StopOnIdleEnd>true</StopOnIdleEnd>
                               <RestartOnIdle>false</RestartOnIdle>
                             </IdleSettings>
                             <MultipleInstancesPolicy>IgnoreNew</MultipleInstancesPolicy>
                             <DisallowStartIfOnBatteries>true</DisallowStartIfOnBatteries>
                             <StopIfGoingOnBatteries>true</StopIfGoingOnBatteries>
                             <AllowHardTerminate>true</AllowHardTerminate>
                             <StartWhenAvailable>true</StartWhenAvailable>
                             <RunOnlyIfNetworkAvailable>false</RunOnlyIfNetworkAvailable>
                             <AllowStartOnDemand>true</AllowStartOnDemand>
                             <Enabled>true</Enabled>
                             <Hidden>false</Hidden>
                             <RunOnlyIfIdle>false</RunOnlyIfIdle>
                             <WakeToRun>false</WakeToRun>
                             <ExecutionTimeLimit>PT72H</ExecutionTimeLimit>
                             <Priority>7</Priority>
                           </Settings>
                           <Actions Context="Author">
                             <Exec>
                               <Command>C:\Windows\System32\notepad.exe</Command>
                             </Exec>
                           </Actions>
                           <Principals>
                             <Principal id="Author">
                               <UserId>COOKHAM\tfl</UserId>
                               <LogonType>InteractiveToken</LogonType>
                             </Principal>
                           </Principals>
                         </Task>

    Task submitted.
#>
# Helper Function
function XMLTIME{
Param ( $T)
$csecond = $t.Second.ToString()
$cminute = $t.minute.ToString()
$chour = $t.hour.ToString()
$cday  = $t.day.ToString()
$cmonth  = $t.month.ToString()
$cyear = $t.year.ToString()

$date =  $cyear + "-"
if ($cmonth.Length -eq 1) { $date += "0" + $cmonth + "-"} 
else                      { $date += $cmonth + "-"}
if ($cday.length -eq 1)   { $date += "0" + $cday + "T"}
else                      { $date += $cday + "T"}
if ($chour.length -eq 1)  { $date += "0" + $chour + ":"}
else                      { $date += $chour + ":"}
if ($cminute.length -eq 1){ $date += "0" + $cminute + ":"}
else                      { $date += $cminute + ":"}
if ($csecond.length -eq 1){ $date += "0" + $csecond}
else                      { $date += $csecond}
# return
$date
}


# A constant that specifies a time-based trigger.
$TriggerTypeTime = 1
# A constant that specifies an executable action.
$ActionTypeExec = 0   


# Create and connect to the service
$service = New-Object -com schedule.service 
$service.Connect()

# Get a folder to create a task definition in. 
$rootFolder = $service.GetFolder("\")

# The taskDefinition variable is the TaskDefinition object.
# The flags parameter is 0 because it is not supported.
$taskDefinition = $service.NewTask(0) 

# Define information about the task.

# Set the registration info for the task by 
# creating the RegistrationInfo object.
$regInfo = $taskDefinition.RegistrationInfo
$regInfo.Description = "Start notepad at a certain time"
$regInfo.Author = "Thomas Lee"

# Set the principal for the task
$principal = $taskDefinition.Principal

# Set the logon type to interactive logon
$principal.LogonType = 3

# Set the task setting info for the Task Scheduler by
# creating a TaskSettings object.
$settings = $taskDefinition.Settings
$settings.Enabled = $True
$settings.StartWhenAvailable = $True
$settings.Hidden = $False

# Create a time-based trigger.
$triggers = $taskDefinition.Triggers
$trigger = $triggers.Create($TriggerTypeTime)

# Trigger variables that define when the trigger is active.
$time = ([system.datetime]::now).addseconds(30)
$startTime = XmlTime($time)

$time = ([system.datetime]::now).addminutes(5)
$endTime = XmlTime($time)

"Time Now       : {0}" -f (Get-Date -display time)
"Task startTime : {0}" -f $startTime
"Task endTime   : {0}" -f $endTime

$trigger.StartBoundary = $startTime
$trigger.EndBoundary = $endTime
$trigger.ExecutionTimeLimit = "PT5M"    #Five minutes
$trigger.Id = "TimeTriggerId"
$trigger.Enabled = $True

# Create the action for the task to execute.

# Add an action to the task to run notepad.exe.
$Action = $taskDefinition.Actions.Create( $ActionTypeExec )
$Action.Path = "C:\Windows\System32\notepad.exe"

"Task definition created. About to submit the task..."

# Register (create) the task.

$rootFolder.RegisterTaskDefinition("Test TimeTrigger", $taskDefinition, 6,"" ,"" , 3)

"Task submitted."
