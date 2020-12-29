# MrNetTek
# eddiejackson.net/blog
# 5/8/2020
# free for public use 
# free to claim as your own
 
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing
 
Function Get-UserInput {
 
    $form1 = New-Object System.Windows.Forms.Form
    $form1.Icon = 'C:\PowerShell\PowerShell.ico'
    $form1.Text = 'PING Computer'
    $form1.Size = New-Object System.Drawing.Size(300,200)
    $form1.StartPosition = 'CenterScreen'
 
    $okButton1 = New-Object System.Windows.Forms.Button
    $okButton1.Location = New-Object System.Drawing.Point(75,120)
    $okButton1.Size = New-Object System.Drawing.Size(75,23)
    $okButton1.Text = 'OK'
    $okButton1.DialogResult = [System.Windows.Forms.DialogResult]::OK
    $form1.AcceptButton = $okButton1
    $form1.Controls.Add($okButton1)
 
    $cancelButton1 = New-Object System.Windows.Forms.Button
    $cancelButton1.Location = New-Object System.Drawing.Point(150,120)
    $cancelButton1.Size = New-Object System.Drawing.Size(75,23)
    $cancelButton1.Text = 'Cancel'
    $cancelButton1.DialogResult = [System.Windows.Forms.DialogResult]::Cancel
    $form1.CancelButton = $cancelButton1
    $form1.Controls.Add($cancelButton1)
 
    $label1 = New-Object System.Windows.Forms.Label
    $label1.Location = New-Object System.Drawing.Point(10,20)
    $label1.Size = New-Object System.Drawing.Size(280,20)
    $label1.Text = 'Enter computer name to PING:'
    $form1.Controls.Add($label1)
 
    $textBox1 = New-Object System.Windows.Forms.TextBox
    $textBox1.Location = New-Object System.Drawing.Point(10,40)
    $textBox1.Size = New-Object System.Drawing.Size(260,20)
    $form1.Controls.Add($textBox1)
 
    $form1.Topmost = $true
 
    $form1.Add_Shown({$textBox1.Select()})
    $result = $form1.ShowDialog()
 
    if ($result -eq [System.Windows.Forms.DialogResult]::OK)
        {
            $x = $textBox1.Text 
         
        }
    else
    {
        $ProcessID = [System.Diagnostics.Process]::GetCurrentProcess()
        $ProcessID = $ProcessID.ID
        & taskkill /PID $ProcessID /t /f
    }   
 
    if ($x -eq '')
        {
            [System.Windows.Forms.MessageBox]::Show("Enter a computer name." , "PING")
            Get-UserInput
        }
    else
    {
        return $x
    }
     
}
 
$UserInput = Get-UserInput
 
$Global:SyncTable = [HashTable]::Synchronized(@{})
$SyncTable.CompName = "$UserInput"
$SyncTable.ContinuePing = $true
$SyncTable.CloseScript = $false
$SyncTable.Grid_Ping_Array = New-Object System.Collections.ArrayList
 
$Runspace1 = [RunspaceFactory]::CreateRunspace()
$Runspace1.ApartmentState = "STA"
$Runspace1.ThreadOptions = "ReuseThread"
$Runspace1.Open()
$Runspace1.SessionStateProxy.SetVariable("SyncTable",$SyncTable)
$psScript = [Powershell]::Create().AddScript({
    $UserInput = $SyncTable.CompName
    Add-Type -AssemblyName PresentationFramework,PresentationCore,WindowsBase
 
Function End-Script {
    $ProcessID = [System.Diagnostics.Process]::GetCurrentProcess()
    $ProcessID = $ProcessID.ID
    & taskkill /PID $ProcessID /t /f
}
 
Function Btn_CancelClose_Click {
    $BtnContent = $SyncTable.Btn_CancelClose.Content
    if ($BtnContent -ne "Cancel") {
        $SyncTable.CloseScript = $true       
        End-Script
    }
    $SyncTable.ContinuePing = $false
}
 
Function Window_Activated {
    $SyncTable.Window.TopMost = $false
    $SyncTable.Window.ShowInTaskBar = $true
}
 
$form1Main_FormClosing=[System.Windows.Forms.FormClosingEventHandler]{
 
    if($form1Main.DialogResult -ne 'OK')
    {
        $_.Cancel = $true
    }   
}
 
 
    [XML]$xaml = @'
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" Title="" Height="350" Width="425" ShowInTaskbar="False" Topmost="True" WindowStartupLocation="CenterScreen">
    <Grid>
        <Label x:Name="Lbl_CompName" Content="" VerticalAlignment="Top" HorizontalContentAlignment="Center" Margin="5,5"/>
        <DataGrid x:Name="Grid_Ping" Margin="5,35,5,130" IsReadOnly="True" AutoGenerateColumns="False" ItemBindingGroup="{Binding}" SelectionUnit="FullRow" HeadersVisibility="Column">
            <DataGrid.Columns>
                <DataGridTextColumn x:Name="Col_Reply" Binding="{Binding Path=ReplyIP}" Header="Reply From"/>
                <DataGridTextColumn x:Name="Col_Status" Binding="{Binding Path=Status}" Header="Status"/>
                <DataGridTextColumn x:Name="Col_Bytes" Binding="{Binding Path=Bytes}" Header="Bytes"/>
                <DataGridTextColumn x:Name="Col_Time" Binding="{Binding Path=Time}" Header="Time"/>
                <DataGridTextColumn x:Name="Col_TTL" Binding="{Binding Path=TTL}" Header="TTL"/>
            </DataGrid.Columns>
        </DataGrid>
        <Border BorderThickness="1" BorderBrush="Black" Height="90" VerticalAlignment="Bottom" Margin="5,5,5,30"/>
        <Label x:Name="Lbl_PingStats" Content="" VerticalAlignment="Bottom" Margin="5,5,5,30" Height="90"/>
        <Button x:Name="Btn_CancelClose" Content="Cancel" HorizontalAlignment="Right" VerticalAlignment="Bottom" Width="75" Margin="5,5,5,5"/>
    </Grid>
</Window>
'@
 
$XMLReader = (New-Object System.Xml.XmlNodeReader $xaml)
$SyncTable.Window = [Windows.Markup.XamlReader]::Load($XMLReader)
$SyncTable.Window.Add_Closed({End-Script})
$SyncTable.Window.Add_Activated({Window_Activated})
$SyncTable.Window.Title = "PING - $UserInput"
$SyncTable.Lbl_CompName = $SyncTable.Window.FindName("Lbl_CompName")
$SyncTable.Lbl_CompName.Content = "$UserInput"
$SyncTable.Grid_Ping = $SyncTable.Window.FindName("Grid_Ping")
$SyncTable.Lbl_PingStats = $SyncTable.Window.FindName("Lbl_PingStats")
$SyncTable.Lbl_PingStats.Content = ""
$SyncTable.Btn_CancelClose = $SyncTable.Window.FindName("Btn_CancelClose")
$SyncTable.Btn_CancelClose.Add_Click({Btn_CancelClose_Click})
$Timer = New-Object System.Windows.Threading.DispatcherTimer
$Timer.Interval = [TimeSpan]"0:0:0.50"
$Action = {
    $SyncTable.Grid_Ping.ItemsSource = $SyncTable.Grid_Ping_Array
    $SyncTable.Lbl_PingStats.Content = $Synctable.PingLabel
    $SyncTable.Grid_Ping.ScrollIntoView($SyncTable.Grid_Ping.Items[$SyncTable.Grid_Ping.Items.Count - 1])
    $SyncTable.Grid_Ping.UpdateLayout()
    if ($SyncTable.ContinuePing -ne $true) {
        $SyncTable.Btn_CancelClose.Content = "Close"
        $Timer.Stop()
    }
}
$Timer.Add_Tick($Action)
$Timer.Start()
$SyncTable.Window.ShowDialog() | Out-Null
})
$psScript.Runspace = $Runspace1
$Handle = $psScript.BeginInvoke()
 
$NumSuccess = 0
$NumUnsuccess = 0
$Count = 0
$IP = $null
$MinResTime = 0
$MaxResTime = 0
$AverageResTime = $null
$TotalResTime = 0
 
do {
    $ResponseTime = $null
    $ReplySize = $null
    $TTL = $null
    $StatusCode = $null
    $Count++
    $strQuery = "Select * from Win32_PingStatus where Address='$UserInput'" 
    $ping = Get-WmiObject -query $strQuery
    $IP = $ping.IPV4Address.IPAddressToString
    $ReplySize = $ping.ReplySize
    $ResponseTime = $ping.ResponseTime | Out-String
    $ResponseTimeText = "$ResponseTime ms"
    $ResponseTimeText = $ResponseTimeText.Replace("`n","").replace("`r","")
    $TTL = $ping.ResponseTimeToLive
    $StatusCode = $ping.StatusCode
    if ($StatusCode -eq 0) {
        $NumSuccess++
         
        $Results = Select-Object -InputObject "" ReplyIP, Status, Bytes, Time, TTL
        $Results.ReplyIP = $IP
        $Results.Status = "Successful"
        $Results.Bytes = $ReplySize
        $Results.Time = $ResponseTimeText
        $Results.TTL = $TTL
        $SyncTable.Grid_Ping_Array += $Results
         
        $PercentLoss = ($NumUnsuccess / $Count) * 100
        $PercentLoss = [Math]::Round($PercentLoss, 0)
        if ($ResponseTime -gt $MaxResTime -or $MaxResTime -eq $null) {$MaxResTime = $ResponseTime}
        if ($ResponseTime -lt $MinResTime -or $MinResTime -eq $null) {$MinResTime = $ResponseTime}
        $TotalResTime = $TotalResTime + $ResponseTime
        $AverageResTime = $TotalResTime / $NumSuccess
        $AverageResTimeRounded = [Math]::Round($AverageResTime, 2)
        $MinResTimeText = $MinResTime | Out-String
        $MinResTimeText = $MinResTimeText.replace("`n","").replace("`r","")
        $MaxResTimeText = $MaxResTime | Out-String
        $MaxResTimeText = $MaxResTimeText.replace("`n","").replace("`r","")
        $Synctable.PingLabel = "Ping statistics for $IP" + ":`nPackets: Sent = $count" + ", Successful = $NumSuccess" + ", Unsuccessful = $NumUnsuccess (" + $PercentLoss + "% loss),`nApproximate round trip in milli-seconds:`nMinimum = $MinResTimeText" + "ms, Maximum = $MaxResTimeText" + "ms, Average = $AverageResTimeRounded" + "ms"
    }
    else {
        $NumUnsuccess++
        $Results = Select-Object -InputObject "" ReplyIP, Status
        $Results.ReplyIP = $IP
        $Results.Status = "Unsuccessful"
        $SyncTable.Grid_Ping_Array += $Results
        $PingResults.Rows.Add($IP,"Unsuccessful")
        $PercentLoss = ($NumUnsuccess / $Count) * 100
        $PercentLoss = [Math]::Round($PercentLoss, 2)
        $TotalResTime = $TotalResTime + $ResponseTime
        $MinResTimeText = $MinResTime | Out-String
        $MinResTimeText = $MinResTimeText.replace("`n","").replace("`r","")
        $MaxResTimeText = $MaxResTime | Out-String
        $MaxResTimeText = $MaxResTimeText.replace("`n","").replace("`r","")
        $Synctable.PingLabel = "Ping statistics for $IP" + ":`nPackets: Sent = $count" + ", Successful = $NumSuccess" + ", Unsuccessful = $NumUnsuccess (" + $PercentLoss + "% loss),`nApproximate round trip in milli-seconds:`nMinimum = $MinResTimeText" + "ms, Maximum = $MaxResTimeText" + "ms, Average = $AverageResTime" + "ms"
    }
    Start-Sleep -Milliseconds 500
} while ($SyncTable.ContinuePing -eq $true)
 
do {
    Start-Sleep 10
} while ($SyncTable.CloseScript -ne $true)