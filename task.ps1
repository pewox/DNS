$datetime = [datetime]::new(2024,03,14,13,53,0)
$action = New-ScheduledTaskAction -Execute "powershell" -argument "-ExecutionPolicy Bypass -File C:\PSScripte\CName\test.ps1 -Name NeuerCname -HostAliasName neuNetbios.jusitz.thlv.de"
$trigger = New-ScheduledTaskTrigger -once -At $datetime
$principal = New-ScheduledTaskPrincipal -UserId "NT AUTHORITY\SYSTEM" -RunLevel Highest #-LogonType ServiceAccount  
Register-ScheduledTask -taskname 'FQDN-Rename' -Action $action -Trigger $trigger -Principal $principal -AsJob -Force #| Out-Null
