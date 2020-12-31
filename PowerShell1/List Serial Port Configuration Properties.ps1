$strComputer = "."

$colItems = get-wmiobject -class "Win32_SerialPortConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "Abort Read/Write On Error: " $objItem.AbortReadWriteOnError
      write-host "Baud Rate: " $objItem.BaudRate
      write-host "Binary Mode Enabled: " $objItem.BinaryModeEnabled
      write-host "Bits Per Byte: " $objItem.BitsPerByte
      write-host "Caption: " $objItem.Caption
      write-host "Continue XMitOn XOff: " $objItem.ContinueXMitOnXOff
      write-host "CTS Outflow Control: " $objItem.CTSOutflowControl
      write-host "Description: " $objItem.Description
      write-host "Discard NULL Bytes: " $objItem.DiscardNULLBytes
      write-host "DSR Outflow Control: " $objItem.DSROutflowControl
      write-host "DSR Sensitivity: " $objItem.DSRSensitivity
      write-host "DTR Flow Control Type: " $objItem.DTRFlowControlType
      write-host "EOF Character: " $objItem.EOFCharacter
      write-host "Error ReplaceCharacter: " $objItem.ErrorReplaceCharacter
      write-host "Error Replacement Enabled: " $objItem.ErrorReplacementEnabled
      write-host "Event Character: " $objItem.EventCharacter
      write-host "Is Busy: " $objItem.IsBusy
      write-host "Name: " $objItem.Name
      write-host "Parity: " $objItem.Parity
      write-host "Parity Check Enabled: " $objItem.ParityCheckEnabled
      write-host "RTS Flow Control Type: " $objItem.RTSFlowControlType
      write-host "Setting ID: " $objItem.SettingID
      write-host "Stop Bits: " $objItem.StopBits
      write-host "XOff Character: " $objItem.XOffCharacter
      write-host "XOff XMit Threshold: " $objItem.XOffXMitThreshold
      write-host "XOn Character: " $objItem.XOnCharacter
      write-host "XOn XMit Threshold: " $objItem.XOnXMitThreshold
      write-host "XOn XOff InFlow Control: " $objItem.XOnXOffInFlowControl
      write-host "XOn XOff OutFlow Control: " $objItem.XOnXOffOutFlowControl
      write-host
}


