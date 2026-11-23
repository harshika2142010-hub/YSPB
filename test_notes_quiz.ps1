$bodyNotes = @{ 
    topicTitle = "Glycolysis and Cellular Respiration"
    documentText = "Glycolysis is an anaerobic catabolic process yielding 2 ATP and 2 NADH molecules per glucose molecule." 
} | ConvertTo-Json

$resNotes = Invoke-RestMethod -Uri "http://localhost:5173/api/gemini/notes" -Method Post -Body $bodyNotes -ContentType "application/json"
Write-Host "Notes Title: $($resNotes.notes.topicTitle)"
Write-Host "Definitions Count: $($resNotes.notes.definitions.Count)"
Write-Host "First Definition: $($resNotes.notes.definitions[0].term)"

$bodyQuiz = @{
    topicTitle = "Cellular Respiration"
    documentText = "Mitochondria produce ATP through oxidative phosphorylation."
    difficulty = "Intermediate"
    questionCount = 3
} | ConvertTo-Json

$resQuiz = Invoke-RestMethod -Uri "http://localhost:5173/api/gemini/quiz" -Method Post -Body $bodyQuiz -ContentType "application/json"
Write-Host "Quiz Questions Count: $($resQuiz.questions.Count)"
Write-Host "First Question: $($resQuiz.questions[0].question)"
