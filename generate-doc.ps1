$xlfile = "C:\temp\IT_Info_Sheet_-_Template.xlsx"
$result = Import-Excel $xlfile -WorksheetName "Server Roles"
$title = "XYZ Network Inventory"
$subtitle = "Mono"


$Document = New-OfficeWord -FilePath C:\temp\TestTable.docx
$Document.BuiltinDocumentProperties.Title = $title
$Document.BuiltinDocumentProperties.Subject = $subtitle

# $Document = Get-OfficeWord -FilePath C:\temp\template.docx
$null = $Document.AddTableOfContent()
$null = $Document.AddPageBreak()
$ListTOC = $Document.AddTableOfContentList([OfficeIMO.Word.WordListStyle]::Headings111)

#Active Directory Domain Administrator Accounts
$null = $ListTOC.AddItem("Active Directory Domain Administrator Accounts")
$DataTable =  get-adgroupmember 'domain admins' | select SamAccountName, name
$Table = New-OfficeWordTable -Document $Document -DataTable $DataTable -TableLayout Autofit -Style GridTable4Accent1

#Non Active Directory Accounts
$null = $ListTOC.AddItem("Non Active Directory Accounts")
$query =  bw list items --session $BW_API | ConvertFrom-Json
$DataTable = $query | select name, {$_.login.username}, {$_.login.password}
$Table = New-OfficeWordTable -Document $Document -DataTable $DataTable -TableLayout Autofit -Style GridTable4Accent1

#Inventory List
$null = $ListTOC.AddItem("Inventory List")
$DataTable =  $result | where-object Type -eq "Virtual Machine" | select name, "IP Address", Type, Role, "Impacts what Services", "Relies on What Services", "Operating System"
$Table = New-OfficeWordTable -Document $Document -DataTable $DataTable -TableLayout Autofit -Style GridTable4Accent1

#DNS Zone Configuration
$null = $ListTOC.AddItem("DNS Zone Configuration")
$DataTable =  Get-DnsServerzone -ComputerName hk-dc3 | select ZoneName, ZoneType
$Table = New-OfficeWordTable -Document $Document -DataTable $DataTable -TableLayout Autofit -Style GridTable4Accent1

#DHCP Scope Configuration
$null = $ListTOC.AddItem("DHCP Scope Configuration")
$DataTable =  Get-DhcpServerv4Scope -ComputerName HK-DC3 | select ScopeId,SubnetMask,Name,State,StartRange,EndRange,LeaseDuration
$Table = New-OfficeWordTable -Document $Document -DataTable $DataTable -TableLayout Autofit -Style GridTable4Accent1






$null = $ListTOC.AddItem("Non Active Directory Accounts")
New-OfficeWordText -Document $Document -Text 'This is a test, very big test', 'ooops' -Color Blue, Gold -Alignment Right
$null = $ListTOC.AddItem("Heading 2.1", 1)
$Paragraph = New-OfficeWordText -Document $Document -Text 'Centered' -Color Blue, Gold -Alignment Center -ReturnObject
$null = $ListTOC.AddItem("Server Roles")
New-OfficeWordText -Document $Document -Text ' Attached to existing paragraph', ' continue' -Paragraph $Paragraph -Color Blue
$null = $ListTOC.AddItem("Heading 3.1", 1)
$null = $ListTOC.AddItem("Hardware")
New-OfficeWordText -Document $Document -Text ' Attached to existing paragraph', ' continue' -Paragraph $Paragraph -Color Blue
$null = $ListTOC.AddItem("DNS and DHCP")
New-OfficeWordText -Document $Document -Text ' Attached to existing paragraph', ' continue' -Paragraph $Paragraph -Color Blue
$null = $ListTOC.AddItem("Domains")
New-OfficeWordText -Document $Document -Text ' Attached to existing paragraph', ' continue' -Paragraph $Paragraph -Color Blue
$null = $ListTOC.AddItem("License")
New-OfficeWordText -Document $Document -Text ' Attached to existing paragraph', ' continue' -Paragraph $Paragraph -Color Blue
$Document.TableOfContent.Update()

#$Document = New-OfficeWord -FilePath C:\temp\TestTable.docx
#New-OfficeWordText -Document $Document -Text 'This is a test, very big test ', 'and this should be bold' -Bold $null, $true -Underline $null, 'Double'
#$DataTable2 =  $result | select -property Server, "IP Address", "IP Address2", Role, Services
#$Table = New-OfficeWordTable -Document $Document -DataTable $DataTable2 -TableLayout Autofit -Style GridTable4Accent1
Save-OfficeWord -Document $Document -Show