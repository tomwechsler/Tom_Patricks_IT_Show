### Neuen Ordner anlegen

New-Item -ItemType Directory -Name Daten -Path C:\

### Einen File-Share erzeugen (Zugriff: Everyone:FullControl)

New-SmbShare -Name Daten -Path C:\Daten -FullAccess 'everyone'
Get-SmbShareAccess -Name Daten

### NTFS Berechtigungen konfigurieren

icacls C:\Daten\ /grant administrator:"F"

### ACL kopieren 

Get-Acl -Path C:\Test | Set-Acl -Path C:\Daten

### oder das NTFS Modul