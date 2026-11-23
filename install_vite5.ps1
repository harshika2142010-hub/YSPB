$nodeDir = "$env:LOCALAPPDATA\Programs\node-v20.18.0-win-x64"
$env:Path = "$nodeDir;$env:Path"
Set-Location "C:\Users\harsh\.gemini\antigravity\scratch\ypsb"
Write-Host "Installing stable Vite 5.4..."
& "$nodeDir\npm.cmd" install -D vite@^5.4.10 @vitejs/plugin-react@^4.3.3
Write-Host "Running build..."
& "$nodeDir\npm.cmd" run build
