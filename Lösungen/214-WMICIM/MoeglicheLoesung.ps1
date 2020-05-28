#Aufgabe1
Get-CimClass -Namespace root\cimv2
#Alternativ
Get-WmiObject -Namespace root\cimv2 -List

#Aufgabe2
Get-WmiObject -Class Win32_OperatingSystem
Get-CimInstance -ClassName Win32_OperatingSystem

#Aufgabe3
Get-CimInstance -ClassName Win32_OperatingSystem | Format-List -Property *
Get-CimInstance -ClassName Win32_OperatingSystem -Property *