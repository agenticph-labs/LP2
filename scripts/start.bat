@echo off
REM ============================================================
REM  ☕ PH Coffee Market Intelligence — Local Startup Script
REM  Usage: Double-click or run from Command Prompt
REM ============================================================
setlocal enabledelayedexpansion

cd /d "%~dp0.."
set PROJECT_DIR=%CD%

echo ==========================================
echo  ☕ PH Coffee Market Intelligence Dashboard
echo ==========================================
echo.

REM --- Create virtual environment if missing ---
if not exist ".venv\Scripts\python.exe" (
    echo [1/4] Creating virtual environment...
    python -m venv .venv
    if errorlevel 1 (
        echo ERROR: Failed to create virtual environment. Is Python installed?
        pause
        exit /b 1
    )
    echo   Done.
) else (
    echo [1/4] Virtual environment found.
)

REM --- Activate virtual environment ---
echo [2/4] Activating virtual environment...
call .venv\Scripts\activate.bat

REM --- Install dependencies ---
echo [3/4] Installing dependencies...
pip install -r requirements.txt --quiet
if errorlevel 1 (
    echo ERROR: pip install failed.
    pause
    exit /b 1
)
echo   Done.

REM --- Launch dashboard ---
echo [4/4] Launching Streamlit dashboard...
echo.
echo Opening browser to http://localhost:8501
echo Press Ctrl+C in this window to stop.
echo.
start "" http://localhost:8501
streamlit run dashboard.py

pause
