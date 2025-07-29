@echo off
set "ALEAPP_DIR=."
cd /d "%ALEAPP_DIR%"

IF %ERRORLEVEL% NEQ 0 (
    echo Error: Could not change to ALEAPP directory.
    echo Make sure this .bat file is in the same folder as aleappGUI.py.
    pause
    exit /b %ERRORLEVEL%
)

echo Checking and installing Python dependencies...
pip install -r requirements.txt

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Failed to install Python dependencies.
    echo Ensure Python and pip are correctly installed and in your PATH.
    echo Try running this script as administrator if you experience permission issues.
    pause
    exit /b %ERRORLEVEL%
)
echo Dependencies installed/verified successfully.
echo.

echo Launching ALEAPP GUI...
python aleappGUI.py

IF %ERRORLEVEL% NEQ 0 (
    echo.
    echo ERROR: Could not run ALEAPP GUI.
    echo Make sure Python is in your PATH and all dependencies are correctly installed.
    pause
)

pause
