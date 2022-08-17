**********************
Windows PowerShell transcript start
Start time: 20220817111356
Username: FPCAHK\michael.tam
RunAs User: FPCAHK\michael.tam
Configuration Name: 
Machine: HK-C00000000361 (Microsoft Windows NT 10.0.19042.0)
Host Application: C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
Process ID: 14252
PSVersion: 5.1.19041.1320
PSEdition: Desktop
PSCompatibleVersions: 1.0, 2.0, 3.0, 4.0, 5.0, 5.1.19041.1320
BuildVersion: 10.0.19041.1320
CLRVersion: 4.0.30319.42000
WSManStackVersion: 3.0
PSRemotingProtocolVersion: 2.3
SerializationVersion: 1.1.0.1
**********************
Transcript started, output file is C:\Users\michael.tam\Documents\PowerShell_transcript.HK-C00000000361.4CfP9jAm.20220817111356.txt
PS C:\Users\michael.tam> gip


InterfaceAlias       : Wi-Fi
InterfaceIndex       : 19
InterfaceDescription : Intel(R) Dual Band Wireless-AC 8265
NetProfile.Name      : hk.fpca
IPv4Address          : 10.166.38.138
IPv6DefaultGateway   :
IPv4DefaultGateway   : 10.166.38.13
DNSServer            : 10.166.38.4
                       10.166.38.7

InterfaceAlias       : Ethernet 6
InterfaceIndex       : 3
InterfaceDescription : Realtek USB GbE Family Controller
NetAdapter.Status    : Disconnected

InterfaceAlias       : Ethernet 3
InterfaceIndex       : 16
InterfaceDescription : Fortinet SSL VPN Virtual Ethernet Adapter
NetAdapter.Status    : Disconnected

InterfaceAlias       : Ethernet 2
InterfaceIndex       : 13
InterfaceDescription : Fortinet Virtual Ethernet Adapter (NDIS 6.30)
NetAdapter.Status    : Disconnected

InterfaceAlias       : Bluetooth Network Connection
InterfaceIndex       : 11
InterfaceDescription : Bluetooth Device (Personal Area Network)
NetAdapter.Status    : Disconnected

InterfaceAlias       : Ethernet
InterfaceIndex       : 14
InterfaceDescription : Intel(R) Ethernet Connection (4) I219-LM
NetAdapter.Status    : Disconnected



PS C:\Users\michael.tam> gip | Format-Table

ComputerName    InterfaceAlias               InterfaceIndex InterfaceDescription                          CompartmentId NetAdapter                                                                                                                                                                                        NetCompartment                            NetIPv
                                                                                                                                                                                                                                                                                                                                                                    6Inter
                                                                                                                                                                                                                                                                                                                                                                    face
------------    --------------               -------------- --------------------                          ------------- ----------                                                                                                                                                                                        --------------                            ------
HK-C00000000361 Wi-Fi                                    19 Intel(R) Dual Band Wireless-AC 8265                       1 MSFT_NetAdapter (CreationClassName = "MSFT_NetAdapter", DeviceID = "{A91FBA15-4A01-46BE-80A7-074BDF43D169}", SystemCreationClassName = "CIM_NetworkPort", SystemName = "HK-C00000000361.hk.fpca") MSFT_NetCompartment (InstanceID = ";55;") MSF...
HK-C00000000361 Ethernet 6                                3 Realtek USB GbE Family Controller                         1 MSFT_NetAdapter (CreationClassName = "MSFT_NetAdapter", DeviceID = "{07CAA00E-1483-4F1F-B6AD-C750BA9F2180}", SystemCreationClassName = "CIM_NetworkPort", SystemName = "HK-C00000000361.hk.fpca") MSFT_NetCompartment (InstanceID = ";55;") MSF...
HK-C00000000361 Ethernet 3                               16 Fortinet SSL VPN Virtual Ethernet Adapter                 1 MSFT_NetAdapter (CreationClassName = "MSFT_NetAdapter", DeviceID = "{93DCEB6D-97E6-4D1C-92A0-CB16599C372D}", SystemCreationClassName = "CIM_NetworkPort", SystemName = "HK-C00000000361.hk.fpca") MSFT_NetCompartment (InstanceID = ";55;") MSF...
HK-C00000000361 Ethernet 2                               13 Fortinet Virtual Ethernet Adapter (NDIS 6.30)             1 MSFT_NetAdapter (CreationClassName = "MSFT_NetAdapter", DeviceID = "{785B478C-1B05-4136-BC84-5001D7B5F142}", SystemCreationClassName = "CIM_NetworkPort", SystemName = "HK-C00000000361.hk.fpca") MSFT_NetCompartment (InstanceID = ";55;") MSF...
HK-C00000000361 Bluetooth Network Connection             11 Bluetooth Device (Personal Area Network)                  1 MSFT_NetAdapter (CreationClassName = "MSFT_NetAdapter", DeviceID = "{5BE8387C-C131-4B92-B4C6-E5DD9F7A9DAC}", SystemCreationClassName = "CIM_NetworkPort", SystemName = "HK-C00000000361.hk.fpca") MSFT_NetCompartment (InstanceID = ";55;") MSF...
HK-C00000000361 Ethernet                                 14 Intel(R) Ethernet Connection (4) I219-LM                  1 MSFT_NetAdapter (CreationClassName = "MSFT_NetAdapter", DeviceID = "{80711E24-F040-4C09-BCD5-50A72CBD20FE}", SystemCreationClassName = "CIM_NetworkPort", SystemName = "HK-C00000000361.hk.fpca") MSFT_NetCompartment (InstanceID = ";55;") MSF...


PS C:\Users\michael.tam> gip | select computername, interfacealias | ft

ComputerName    InterfaceAlias
------------    --------------
HK-C00000000361 Wi-Fi
HK-C00000000361 Ethernet 6
HK-C00000000361 Ethernet 3
HK-C00000000361 Ethernet 2
HK-C00000000361 Bluetooth Network Connection
HK-C00000000361 Ethernet


PS C:\Users\michael.tam> $PSVersionTable

Name                           Value
----                           -----
PSVersion                      5.1.19041.1320
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.19041.1320
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1


PS C:\Users\michael.tam> Stop-Transcript
**********************
Windows PowerShell transcript end
End time: 20220817111506
**********************
