Write-Host "`n.dll"
Get-ChildItem -Recurse $env:temp\*.dll -ea SilentlyContinue| ForEach-object {Get-AuthenticodeSignature $_ -ea SilentlyContinue} | Where-Object {$_.status -ine "Valid"}|Select Status,Path; 
Write-Host "`n.exe`n"
Get-ChildItem -Recurse $env:temp\*.exe -ea SilentlyContinue| ForEach-object {Get-AuthenticodeSignature $_ -ea SilentlyContinue} | Where-Object {$_.status -ine "Valid"}|Select Status,Path;
Write-Host "`n.jar`n"
Get-ChildItem -Recurse $env:temp\*.rar -ea SilentlyContinue| ForEach-object {Get-AuthenticodeSignature $_ -ea SilentlyContinue} | Where-Object {$_.status -ine "Valid"}|Select Status,Path;
Write-Host "`n.bat`n"
Get-ChildItem -Recurse $env:temp\*.bat -ea SilentlyContinue| ForEach-object {Get-AuthenticodeSignature $_ -ea SilentlyContinue} | Where-Object {$_.status -ine "Valid"}|Select Status,Path;