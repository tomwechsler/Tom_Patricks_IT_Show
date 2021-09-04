[System.Console]::Beep(200,1000)
[System.Console]::Beep(600,1000)

[System.Media.SystemSounds]::Exclamation.play()
[System.Media.SystemSounds]::Hand.Play()

$player = New-Object System.Media.SoundPlayer "$env:windir\Media\windows logon.wav"
$player.PlayLooping()
Start-Sleep 10
$player.Stop()


[System.Console]::Write('Hallo')

[math]::Ceiling('123.50')

[math]::

[System.TimeZone]::CurrentTimeZone
#oder 
Get-TimeZone


