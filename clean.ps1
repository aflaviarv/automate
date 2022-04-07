## AVISO DE LIMPEZA DE LIXEIRA
write-Host "Limpeza de Disco Iniciada" -ForegroundColor Blue
##Clear-RecycleBin -Force -DriveLetter C
##LIMPEZA DE DISCO
cleanmgr /sagerun:1 | Out-Null

## REMOVENDO ARQUIVOS TEMPORÁRIOS
write-Host "Removendo arquivos temporarios" -ForegroundColor Blue
Remove-Item "C:\Users\*\AppData\Local\Temp\" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "C:*\Windows\Temp\" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "C:\temp\*" -Recurse -Force -ErrorAction SilentlyContinue
##REMOVENDO PREFETCH
write-Host "Removendo arquivos Prefetch" -ForegroundColor Blue
Remove-Item “C:\Windows\Prefetch” -Recurse -Force -ErrorAction SilentlyContinue

$([char]7)
Start-Sleep 3
write-Host "Limpeza efetuada"