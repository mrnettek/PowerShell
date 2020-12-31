Function CreateEmptyArray($ubound)
{
 [int[]]$script:aryProp = [array]::CreateInstance("int",$ubound)
} #end CreateEmptyArray
Function GetWmiPerformanceData()
{
 For($i = 0 ; $i -le $reps -1 ; $i++)
  {
   $aryProp[$i] +=([wmi]"\\$computer\root\cimv2:$class.$key='$instance'").$Property
   Write-Progress -Activity "Obtaining Processor info" -Status "% complete: " `
   -PercentComplete $i
   Start-Sleep -Seconds $delay
  } #end for
}#end GetWmiPerformanceData
Function EvaluateObject()
{
 $aryProp | 
 Measure-Object -Average -Maximum -Minimum |
 Format-Table -Property `
  @{ Label = "Data Points" ; Expression = {$_.count} }, 
  average, Maximum, Minimum -autosize
} #End EvaluateObject
# *** Entry Point ***
$computer = "."
$delay = 1
$reps = 10
$class = "Win32_PerfFormattedData_PerfOS_Processor"
$key = "name"
$instance = "_Total"
$property = "PercentProcessorTime"
CreateEmptyArray($reps)
GetWmiPerformanceData
EvaluateObject


