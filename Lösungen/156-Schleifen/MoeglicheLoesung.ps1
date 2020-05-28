#Zählweise auf 2 erhöht
for($i = 2;$i -le 10;$i = $i +2)
{
    $i
}
#einfache zählweise aber mit 2 multipliziert
for($i = 1;$i -le 5;$i++)
{
    $i *2
}

#ganzzahliges Teilen (Modulo) durch 2 und bei REst 0 ausgabe
for($i=1;$i -le 10; $i++)
{
    if($i%2 -eq 0)
    {
        $i
    }
}