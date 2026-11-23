$body = @{ 
    documentText = "CHAPTER 1: Introduction to Cellular Respiration. Mitochondria are the powerhouses of the cell. ATP is produced via oxidative phosphorylation. Glycolysis breaks down glucose in the cytoplasm."
    filename = "test.pdf" 
} | ConvertTo-Json

$res = Invoke-RestMethod -Uri "http://localhost:5173/api/gemini/topics" -Method Post -Body $body -ContentType "application/json"
Write-Host "Topics Count: $($res.topics.Count)"
Write-Host "Source: $($res.source)"
Write-Host "First Topic: $($res.topics[0].title)"
