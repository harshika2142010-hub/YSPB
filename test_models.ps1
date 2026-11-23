$key = "AIzaSyAQ.Ab8RN6JROV4pLlaG9qr3SvtpvkxXLpk5xpvUUkeUG8NgOvhWhg"
try {
    $url = "https://generativelanguage.googleapis.com/v1beta/models?key=$key"
    $res = Invoke-RestMethod -Uri $url
    Write-Host "Success! Found $($res.models.Count) models:"
    foreach ($m in $res.models) {
        if ($m.supportedGenerationMethods -contains "generateContent") {
            Write-Host "Model: $($m.name) - $($m.displayName)"
        }
    }
} catch {
    Write-Host "Error querying models:"
    Write-Host $_.Exception.Message
}
