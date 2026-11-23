$nodeDir = "$env:LOCALAPPDATA\Programs\node-v20.18.0-win-x64"
$env:Path = "$nodeDir;$env:Path"
Set-Location "C:\Users\harsh\.gemini\antigravity\scratch\ypsb"
& "$nodeDir\npm.cmd" run build
