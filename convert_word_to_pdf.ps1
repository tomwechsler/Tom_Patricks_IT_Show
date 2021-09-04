$wdFormatPDF = 17 
$word = New-Object -ComObject word.application 
$word.visible = $false 
$convert = "C:\Skripte\*" 
$Types = "*.docx","*doc" 
Get-ChildItem -path $convert -include $Types | 
foreach-object { 
 $path =  ($_.fullname).substring(0,($_.FullName).lastindexOf(".")) 
 "Die PDF Konvertierung der Dokumente aus dem Ordner $path läuft" 
 $doc = $word.documents.open($_.fullname) 
 $doc.saveas([ref] $path, [ref]$wdFormatPDF) 
 $doc.close() 
} 
$word.Quit() 

