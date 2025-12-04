@echo off
setlocal enabledelayedexpansion

title DMDownloader builder

echo Welcome to the DMDownloader builder!
echo.
set VENV_DIR=.venv
set Inno_Setup_Compiler_Dir="C:\Program Files (x86)\Inno Setup 6"
set MAIN_SCRIPT=DMDownloader.py
set DIST_NAME=DMDownloader
set FFMPEG_FILE=ffmpeg.exe

echo ----------------------------------------
echo [1] Checking virtual environment...
echo ----------------------------------------

if not exist %VENV_DIR% (
    python -m venv %VENV_DIR%
)

echo ----------------------------------------
echo [2] Activating environment and installing dependencies...
echo ----------------------------------------

call %VENV_DIR%\Scripts\activate.bat

python -m pip install --upgrade pip
if exist requirements.txt (
    pip install -r requirements.txt
) else (
    echo Warning: requirements.txt does not exists.
)

echo ----------------------------------------
echo [3] Building using PyInstaller...
echo ----------------------------------------

pyinstaller --noconfirm --noconsole --name %DIST_NAME% ^
 --add-data "%FFMPEG_FILE%;." --icon="res/DMDownloader.ico" ^
 --version-file="res/version_info.txt" ^
 %MAIN_SCRIPT%

echo ----------------------------------------
echo [4] Finished!
echo ----------------------------------------
call %VENV_DIR%\Scripts\deactivate.bat
echo [5] Building Installer
echo ----------------------------------------
call %Inno_Setup_Compiler_Dir%\iscc.exe DMDownloader.iss
pause
