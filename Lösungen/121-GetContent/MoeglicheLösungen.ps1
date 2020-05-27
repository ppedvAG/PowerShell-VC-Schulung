#Einfache Lösung Laudauer: TotalMilliseconds : 8,8894
Get-Content -Path C:\Testfiles\MyServices.txt | Get-Service

#Effizientere Lösung Laufdauer: TotalMilliseconds : 7,6507
Get-Service -DisplayName (Get-Content -Path C:\Testfiles\MyServices.txt)

#cmdlet zum Messen der Ausführungszeit eines cmdlet oder Skriptes
Measure-Command {<#Befehl / Skript #>}