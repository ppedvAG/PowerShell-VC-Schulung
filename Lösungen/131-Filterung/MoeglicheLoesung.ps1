
Get-Service | Where-Object {$PSItem.Name.Length -gt 15}

#Wenn cmdlet eigene Filter haben dann diese verwenden anstatt von where-object
Get-ADUser -Filter {GivenName -eq "Paul"}