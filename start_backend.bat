@echo off
title Attendance App - Backend (FastAPI)
echo ===================================================
echo Starting FastAPI Backend at http://localhost:8000 ...
echo Interactive API docs available at http://localhost:8000/docs
echo ===================================================
cd backend
python -m uvicorn main:app --reload --host 127.0.0.1 --port 8000
pause
