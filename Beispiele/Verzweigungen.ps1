
if(2 -eq 3)
{
    Write-Host "Something within the Matrix is broken" -BackgroundColor Black -ForegroundColor Green
}
elseif(1 -gt 2)
{
    Write-Host "Something within the Matrix is broken" -BackgroundColor Black -ForegroundColor Green
}
else
{
    Write-Host "Everything is fine"
}

$a = 2
switch($a)
{
    1 {Write-Host -ForegroundColor Red "Ausgabe 1"}
    2 {Write-Host -ForegroundColor Green "Ausgabe 2"}
    3 {Write-Host -ForegroundColor White "Ausgabe 3"}
    default {Write-Host -ForegroundColor Red "Falsche eingabe"}
}