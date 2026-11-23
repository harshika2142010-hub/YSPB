$nodeDir = "$env:LOCALAPPDATA\Programs\node-v20.18.0-win-x64"
$env:Path = "$nodeDir;$env:Path"
Set-Location "C:\Users\harsh\.gemini\antigravity\scratch\ypsb"
Write-Host "==========================================================" -ForegroundColor Green
Write-Host "   YPSB - Your Personalised Study Buddy" -ForegroundColor Cyan
Write-Host "   Launching Backend API (Port 3001) & Web (Port 5173)..." -ForegroundColor White
Write-Host "==========================================================" -ForegroundColor Green
& "$nodeDir\npm.cmd" run dev
