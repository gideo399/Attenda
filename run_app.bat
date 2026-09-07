@echo off
echo ===================================================
echo Launching Attendance Record Web App (Backend + Frontend)
echo ===================================================
start "Attendance Backend" cmd /c "call start_backend.bat"
start "Attendance Frontend" cmd /c "call start_frontend.bat"
echo.
echo Both servers are launching in separate windows!
echo Backend:  http://localhost:8000 (API Docs: http://localhost:8000/docs)
echo Frontend: http://localhost:5173
echo.
