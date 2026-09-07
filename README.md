# Attenda - Smart Attendance Record Web App

A clean, modern, full-stack attendance record web application built with **React** paired with **Tailwind CSS** and **Python** (FastAPI + SQLite), featuring strict **Role Boundaries** and **Attendee Self-Registration**.

---

## 🔒 Role Boundaries & Access Control

### 1. Public Attendee View (Default)
When any regular user or student accesses the application:
- They are presented with the **Daily Attendance Registration & Check-In Portal**.
- **They cannot view the management dashboard**, roster statistics, or other attendees' private records.
- **Features**:
  - **New Registration & Check-In**: Enter Full Name, Student/Member ID, Department, and submit today's attendance status (**Present** or **Late** with optional remark).
  - **Quick Check-In**: Existing members can check in using their Member ID (e.g., `STU-001`).
  - Instant confirmation receipt card with check-in timestamp and status badge.

### 2. Administrator Portal
- Accessible via the **"Admin Portal"** button in the top right.
- **Credentials**:
  - **Username**: `admin`
  - **Password**: `admin`
- **Protected Dashboard**:
  - **Live Metric Cards**: Total Roster, Present, Absent, Late counts, and Daily Attendance Rate.
  - **Interactive Attendance Sheet**: Mark individual statuses, add notes, and perform bulk actions (**All Present**, **All Absent**, **Reset**).
  - **Member Directory**: Add, search, and delete members with real-time individual attendance rates.
  - **History & CSV Export**: Filter past logs by date or attendee name, and download complete reports as CSV.
  - **Secure Logout**: Closes the dashboard and returns to the public check-in screen.

---

## 🎨 Tech Stack

- **Frontend**:
  - **React 19** with **Vite 8**
  - **Tailwind CSS v4** (`@tailwindcss/vite` utility-first design)
  - **Lucide React** (modern iconography)
- **Backend**:
  - **Python 3.14**
  - **FastAPI** (REST API with automatic interactive docs at `/docs`)
  - **SQLite3** (local persistent database `attendance.db`)
  - **Pydantic** (data validation & schemas)
  - **Uvicorn** (lightning-fast ASGI server)

---

## 📁 Project Structure

```
attendance-app/
├── backend/
│   ├── database.py         # SQLite connection, tables, queries & self-registration
│   ├── schemas.py          # Pydantic schemas (Login, Self-Registration, Attendance)
│   ├── main.py             # FastAPI app, auth guards, REST endpoints & CORS
│   ├── requirements.txt    # Python dependencies (fastapi, uvicorn)
│   ├── test_auth_api.py    # Automated auth boundary and registration tests
│   ├── test_backend.py     # Database tests
│   └── test_api.py         # API tests
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   │   ├── UserCheckIn.jsx     # Public attendee registration & daily check-in
│   │   │   ├── AdminLoginModal.jsx # Admin login dialog (admin / admin)
│   │   │   ├── Header.jsx          # Top navbar, date selector, admin badge & logout
│   │   │   ├── StatsOverview.jsx   # Top metric cards (Tailwind)
│   │   │   ├── AttendanceSheet.jsx # Daily attendance grid & actions (Tailwind)
│   │   │   ├── MemberManager.jsx   # Member directory & add modal (Tailwind)
│   │   │   └── HistoryReport.jsx   # Historical table & CSV export (Tailwind)
│   │   ├── api.js          # API client with token management
│   │   ├── App.jsx         # Role boundary routing & state management
│   │   ├── index.css       # Tailwind CSS v4 entrypoint
│   │   └── main.jsx
│   ├── vite.config.js      # Vite + React + Tailwind v4 plugin
│   ├── index.html
│   └── package.json
├── run_app.bat             # One-click Windows launcher
├── run_app.ps1             # PowerShell launcher
├── start_backend.bat       # Start backend server
├── start_frontend.bat      # Start frontend dev server
└── README.md
```

---

## 🚀 How to Run

### Option 1: One-Click Launch (Windows)
Double-click **`run_app.bat`** (or execute `.\run_app.ps1` in PowerShell).

- **Frontend App**: [http://127.0.0.1:5173](http://127.0.0.1:5173)
- **Backend API**: [http://127.0.0.1:8000](http://127.0.0.1:8000)
- **Interactive Swagger Docs**: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs)

### Option 2: Manual Start
1. **Backend**:
   ```bash
   cd backend
   python -m uvicorn main:app --reload --host 127.0.0.1 --port 8000
   ```
2. **Frontend**:
   ```bash
   cd frontend
   npm run dev
   ```
