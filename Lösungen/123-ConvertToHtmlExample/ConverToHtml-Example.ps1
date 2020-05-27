$htmlheader =  "<style>"
$htmlheader += "Body{background-color:peachpuff;}"
$htmlheader += "TABLE{border-width: 1px; border-style: solid; border-color: black; border-collapse: collapse}"
$htmlheader += "TH{border-width:1px; padding: 0px;border-style: solid;border-color black; background-color:thistle}"
$htmlheader += "TD{border-width:1px; padding: 0px;border-style: solid;border-color black; background-color:PaleGoldenrod}"
$htmlheader += "</style>"

$html = Get-Service | Select-Object -Property Status,Name,DisplayName | ConvertTo-Html -Head $htmlheader 

#hinzufügen der Style Informationen um laufende Dienste Grün und gestoppte Dienste in Magenta anzuzeigen
$html = $html.Replace("<td>Running</td>",'<td style="background-color: chartreuse;">Running</td>')
$html = $html.Replace("<td>Stopped</td>",'<td style="background-color: magenta;">Stopped</td>')

#Html generieren zb für E-Mail
#Send-MailMessage -Body $html -BodyAsHtml -Subject "Service Status" -To "empfänger@mail.de" 

#schreiben der HTML Datei
Out-File -FilePath C:\Testfiles\services.html -InputObject $html -Force

#Öffnen mit der Dateiendung zugeordnetem Standardprogramm
Invoke-Expression -Command C:\Testfiles\services.html
