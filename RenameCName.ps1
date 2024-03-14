param (
    [Parameter(Mandatory)]
    [string]$Name,
    [Parameter(Mandatory)]
    [string]$HostAliasName,
    [Parameter(Mandatory=$false)]
    [string]$ZoneName = "justiz.thlv.de",
    [Parameter(Mandatory=$false)]
    [string]$ComputerName = "jus001zejen"
)
Add-DnsServerResourceRecordCName -ZoneName $ZoneName -ComputerName $ComputerName -Name $Name -HostNameAlias $HostAliasName
