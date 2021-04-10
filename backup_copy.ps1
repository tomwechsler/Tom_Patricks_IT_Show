### Variablen

$sourcepath = "C:\Source"
$backuppath = "C:\Backup"

### Action

Copy-Item $sourcepath `
-Destination "$backuppath\Backup $(Get-Date -Format dd/MM/yyyy)" `
-Recurse -Force


#####################  Advanced   ####################

### Variablen

$sourcepath = "C:\Source"
$backuppath = "C:\Backup"

### Action

Try {

Copy-Item $sourcepath `
-Destination "$backuppath\Backup $(Get-Date -Format dd/MM/yyyy)" `
-Recurse -Force -ErrorAction Stop

}

Catch {

### Send Mail if something went wrong

$subject = "Copy Job to $backuppath failed"
$body = "Alert generated at $(Get-Date)"
$username = 'alert@domain.com'
$password = 'P@ssword' | ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username, $password
        
$hash = @{
        
    To = 'patrick.gruenauer@domain.com' 
    From = 'alert@domain.com' 
    Subject = $subject
    Body = $body 
    BodyAsHtml = $true 
    SmtpServer = 'smtp.office365.com' 
    UseSSL = $true
    Credential = $cred 
    Port = 587
    }
        
    Send-MailMessage @hash -WarningAction Ignore

}

