#For Schleife
#Zählervariable deklarieren ; Fortsetzungsbedingung ; Zählweise wichtig das ergebnis wieder in der Zähler variable zu speichern
for($i = 1; $i -le 10; $i++)
{
    #SchleifenKörper
}

#ForeachSchleife

Foreach($object in $ListOfObjects)
{
    #Do Something with $object
}

#While Schleife Kopfgeprüft
While($true <# Prüfung #>)
{
    #Schleifenkörper
}

#do while fußgeprüft
do
{
    #Schleifenkörper wird mindestens einmal durchlaufen
}while(<# Bedingung solange true läuft weiter #>)

#do until fußgeprüft
do
{
    #schleifenkörper wird mindestens einmal durchlaufen
}until(<# läuft weiter solange bedingung false ergbibt #>)