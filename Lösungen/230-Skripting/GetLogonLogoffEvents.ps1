[cmdletBinding()]
Param(

[string]$ComputerName = "localhost", 

[Parameter(Mandatory=$true)]
[int]$EventID,

[int]$Newest = 5
)

Get-EventLog -LogName Security -ComputerName $ComputerName | Where-Object EventID -eq $EventID | Select-Object -First $Newest
