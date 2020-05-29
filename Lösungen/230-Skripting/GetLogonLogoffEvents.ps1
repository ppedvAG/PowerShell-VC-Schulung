<#
.Synopsis
   Abfrage von Logon bezogenen Events
.DESCRIPTION
   Dieses Skript bietet die Möglichkeit das Eventlog Security abzufrage auf Anmeldeevents,Abmeldeevents und fehlgeschlagenenen Anmeldungen.
.PARAMETER EventID
   Die EventID die abgefragt werden soll.
.EXAMPLE
   GetLogonLogoffEvents.ps1 -EventID 4624

   Index Time          EntryType   Source                 InstanceID Message
   ----- ----          ---------   ------                 ---------- -------
   31912 Mai 29 09:29  SuccessA... Microsoft-Windows...         4624 Ein Konto wurde erfolgreich angemeldet...
   31909 Mai 29 09:28  SuccessA... Microsoft-Windows...         4624 Ein Konto wurde erfolgreich angemeldet...
   31906 Mai 29 09:28  SuccessA... Microsoft-Windows...         4624 Ein Konto wurde erfolgreich angemeldet...
   31902 Mai 29 09:28  SuccessA... Microsoft-Windows...         4624 Ein Konto wurde erfolgreich angemeldet...
   31898 Mai 29 09:28  SuccessA... Microsoft-Windows...         4624 Ein Konto wurde erfolgreich angemeldet...

   Abfrage der EventId 4624 (Anmeldeevents) vom lokalen Computer
.EXAMPLE
    .\GetLogonLogoffEvents.ps1 -EventID 4634 -ComputerName Member1

    Index Time          EntryType   Source                 InstanceID Message
   ----- ----          ---------   ------                 ---------- -------
    2317 Mai 29 09:02  SuccessA... Microsoft-Windows...         4634 Ein Konto wurde abgemeldet....
    2316 Mai 29 09:02  SuccessA... Microsoft-Windows...         4634 Ein Konto wurde abgemeldet....
    2315 Mai 29 09:01  SuccessA... Microsoft-Windows...         4634 Ein Konto wurde abgemeldet....
    2314 Mai 29 09:01  SuccessA... Microsoft-Windows...         4634 Ein Konto wurde abgemeldet....
    2313 Mai 29 09:00  SuccessA... Microsoft-Windows...         4634 Ein Konto wurde abgemeldet....

    Abfrage der EventID 4634 (AbmeldeEvent) von einem RemoteComputer
#>
[cmdletBinding()]
Param(

[ValidateScript({Test-Connection -ComputerName $PSItem -Count 2 -Quiet})]
[string]$ComputerName = "localhost", 


[ValidateSet(4624,4625,4634)]
[Parameter(Mandatory=$true)]
[int]$EventID,

[ValidateRange(5,10)]
[int]$Newest = 5
)

Write-Debug -Message "Vor Abfrage"
Write-Verbose -Message "Folgende Werte wurden übergeben: ComputerName: $ComputerName , EventID: $EventID , Newest: $Newest"
Get-EventLog -LogName Security -ComputerName $ComputerName | Where-Object EventID -eq $EventID | Select-Object -First $Newest