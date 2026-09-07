Write-Host "===================================================" -ForegroundColor Cyan
Write-Host "Launching Attendance Record Web App" -ForegroundColor Green
Write-Host "===================================================" -ForegroundColor Cyan

Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd backend; python -m uvicorn main:app --reload --host 127.0.0.1 --port 8000"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd frontend; npm run dev"

Write-Host "`nBackend starting at:  http://localhost:8000 (API Docs: http://localhost:8000/docs)" -ForegroundColor Yellow
Write-Host "Frontend starting at: http://localhost:5173" -ForegroundColor Yellow
Write-Host "`nBoth services are running in background windows.`n" -ForegroundColor Green
