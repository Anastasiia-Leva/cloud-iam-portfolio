
$filePath = "C:\Users\EmmaJohnson\Downloads\7-Zip-x64.exe"

if (Test-Path $filePath) {
    
    $fileHash = Get-FileHash -Path $filePath -Algorithm SHA256
    
    Write-Host "Der SHA-256 Hash ist:" -ForegroundColor Green
    Write-Host $fileHash.Hash -ForegroundColor Cyan

} else {
    Write-Host "Fehler: Die Datei wurde nicht gefunden!" -ForegroundColor Red
}
