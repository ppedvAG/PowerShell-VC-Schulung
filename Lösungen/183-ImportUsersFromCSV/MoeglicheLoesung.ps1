#einfacher Import , User bleiben aber deaktiviert weil Passwort ein String ist aber ein SecureString erforderlich ist
Import-Csv -Path C:\Testfiles\MyNewAdUsers1.csv | New-ADUser

#Import mit manuellem Mapping der Properties zu Parameter um beim AccountPassword  eine konvertierung zu Securestring zu erreichen. 
Import-Csv -Path C:\Testfiles\MyNewAdUsers2.csv | ForEach-Object { New-ADUser -GivenName $PSItem.GivenName `
                                                                              -Surname $PSItem.SurName `
                                                                              -Name $PSItem.Name `
                                                                              -SamAccountName $PSItem.SamAccountName `
                                                                              -Department $PSItem.Department `
                                                                              -Path $PSItem.Path `
                                                                              -Enabled ([bool]$PSItem.Enabled) `
                                                                              -AccountPassword (ConvertTo-SecureString $PSItem.Password -AsPlainText -Force) }