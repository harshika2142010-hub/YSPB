$key = "AIzaSyAQ.Ab8RN6JROV4pLlaG9qr3SvtpvkxXLpk5xpvUUkeUG8NgOvhWhg"
try {
    $url = "https://generativelanguage.googleapis.com/v1beta/models?key=$key"
    $res = Invoke-WebRequest -Uri $url -UseBasicParsing
} catch {
    $stream = $_.Exception.Response.GetResponseStream()
    $reader = New-Object System.IO.StreamReader($stream)
    Write-Host "Response body:"
    Write-Host $reader.ReadToEnd()
}
