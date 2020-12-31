<#
.SYNOPSIS
    Sends a UDP datagram to a port
.DESCRIPTION
    This script used system.net.socckets to send a UDP
	datagram to a particular port. Being UDP, there's
	no way to determine if the UDP datagram actually
	was received. 
	for this sample, a port was chosen (20000).
.NOTES
    File Name  : Send-UDPDatagram
	Author     : Thomas Lee - tfl@psp.co.uk
	Requires   : PowerShell V2 CTP3
.LINK
    http://www.pshscripts.blogspot.com
.EXAMPLE
#>

###
#  Start of Script
##

# Define port and target IP address
# Random here!
[int] $port = 20000
$IP = "10.10.1.100"
$address = [system.net.IPAddress]::Parse($IP)

# Create IP Endpoint
$end = new-object system.net.IPEndPoint $address, $port

# Create Socket
$Saddrf = [system.net.sockets.AddressFamily]::InterNetwork
$Stype =  [system.net.sockets.SocketType]::Dgram
$Ptype =  [system.net.sockets.ProtocolType]::UDP
$Sock = new-object system.net.sockets.Socket $saddrf, $stype, $ptype
$Sock.Ttl = 26

# Connect to socket
$sock.Connect($end)

# Create encoded buffer
$Enc = [System.Text.Encoding]::ASCII
$Message = "Jerry Garcia Rocks`n"*10
$Buffer = $enc.GetBytes($Message)

# Send the buffer
$Sent = $Sock.Send($Buffer)
"{0} characters sent to: {1} " -f $sent,$IP
"Message is:"
$Message
# End of Script