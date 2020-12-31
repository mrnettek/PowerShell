$strComputer = "."

$colItems = get-wmiobject -class "Win32_NetworkAdapterConfiguration" -namespace "root\CIMV2" `
-computername $strComputer

foreach ($objItem in $colItems) {
      write-host "ARP Always Source Route: " $objItem.ArpAlwaysSourceRoute
      write-host "ARP Use EtherSNAP: " $objItem.ArpUseEtherSNAP
      write-host "Caption: " $objItem.Caption
      write-host "Database Path: " $objItem.DatabasePath
      write-host "Dead Gateway Detect Enabled: " $objItem.DeadGWDetectEnabled
      write-host "Default IP Gateway: " $objItem.DefaultIPGateway
      write-host "Default TOS: " $objItem.DefaultTOS
      write-host "Default TTL: " $objItem.DefaultTTL
      write-host "Description: " $objItem.Description
      write-host "DHCP Enabled: " $objItem.DHCPEnabled
      write-host "DHCP Lease Expires: " $objItem.DHCPLeaseExpires
      write-host "DHCP Lease Obtained: " $objItem.DHCPLeaseObtained
      write-host "DHCP Server: " $objItem.DHCPServer
      write-host "DNS Domain: " $objItem.DNSDomain
      write-host "DNS Domain Suffix Search Order: " $objItem.DNSDomainSuffixSearchOrder
      write-host "DNS Enabled For WINS Resolution: " $objItem.DNSEnabledForWINSResolution
      write-host "DNS Host Name: " $objItem.DNSHostName
      write-host "DNS Server Search Order: " $objItem.DNSServerSearchOrder
      write-host "Domain DNS Registration Enabled: " $objItem.DomainDNSRegistrationEnabled
      write-host "Forward Buffer Memory: " $objItem.ForwardBufferMemory
      write-host "Full DNS Registration Enabled: " $objItem.FullDNSRegistrationEnabled
      write-host "Gateway Cost Metric: " $objItem.GatewayCostMetric
      write-host "IGMP Level: " $objItem.IGMPLevel
      write-host "Index: " $objItem.Index
      write-host "IP Address: " $objItem.IPAddress
      write-host "IP Connection Metric: " $objItem.IPConnectionMetric
      write-host "IP Enabled: " $objItem.IPEnabled
      write-host "IP Filter Security Enabled: " $objItem.IPFilterSecurityEnabled
      write-host "IP Port Security Enabled: " $objItem.IPPortSecurityEnabled
      write-host "IPSec Permit IP Protocols: " $objItem.IPSecPermitIPProtocols
      write-host "IPSec Permit TCP Ports: " $objItem.IPSecPermitTCPPorts
      write-host "IPSec Permit UDP Ports: " $objItem.IPSecPermitUDPPorts
      write-host "IP Subnet: " $objItem.IPSubnet
      write-host "IP Use Zero Broadcast: " $objItem.IPUseZeroBroadcast
      write-host "IPX Address: " $objItem.IPXAddress
      write-host "IPX Enabled: " $objItem.IPXEnabled
      write-host "IPX Frame Type: " $objItem.IPXFrameType
      write-host "IPX Media Type: " $objItem.IPXMediaType
      write-host "IPX Network Number: " $objItem.IPXNetworkNumber
      write-host "IPX Virtual Net Number: " $objItem.IPXVirtualNetNumber
      write-host "Keep Alive Interval: " $objItem.KeepAliveInterval
      write-host "Keep Alive Time: " $objItem.KeepAliveTime
      write-host "MAC Address: " $objItem.MACAddress
      write-host "MTU: " $objItem.MTU
      write-host "Number of Forward Packets: " $objItem.NumForwardPackets
      write-host "PMTUBH Detect Enabled: " $objItem.PMTUBHDetectEnabled
      write-host "PMTU Discovery Enabled: " $objItem.PMTUDiscoveryEnabled
      write-host "Service Name: " $objItem.ServiceName
      write-host "Setting ID: " $objItem.SettingID
      write-host "TCP/IP Netbios Options: " $objItem.TcpipNetbiosOptions
      write-host "TCP Maximum Connect Retransmissions: " $objItem.TcpMaxConnectRetransmissions
      write-host "TCP Maximum Data Retransmissions: " $objItem.TcpMaxDataRetransmissions
      write-host "TCP Number of Connections: " $objItem.TcpNumConnections
      write-host "TCP Use RFC1122 Urgent Pointer: " $objItem.TcpUseRFC1122UrgentPointer
      write-host "TCP Window Size: " $objItem.TcpWindowSize
      write-host "WINS Enable LMHosts Lookup: " $objItem.WINSEnableLMHostsLookup
      write-host "WINS Host Lookup File: " $objItem.WINSHostLookupFile
      write-host "WINS Primary Server: " $objItem.WINSPrimaryServer
      write-host "WINS Scope ID: " $objItem.WINSScopeID
      write-host "WINS Secondary Server: " $objItem.WINSSecondaryServer
      write-host
}


