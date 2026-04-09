@echo off
REM ═══════════════════════════════════════════════════════════
REM CRACK SMS BOT — DEPLOYMENT SCRIPT (Windows)
REM ═══════════════════════════════════════════════════════════

echo 🚀 Starting Crack SMS Bot deployment...

REM Check Python version
for /f "tokens=*" %%i in ('python --version 2^>^&1') do set PYTHON_VERSION=%%i
echo ✅ Python version: %PYTHON_VERSION%

REM Check if .env exists
if not exist .env (
    echo ⚠️ .env file not found. Creating from .env.example...
    copy .env.example .env
    echo 📝 Please update .env with your settings
)

REM Install dependencies
echo 📦 Installing dependencies...
python -m pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

REM Verify database
echo 🗄️ Checking database...
if not exist sms_database_np.db (
    echo 📝 Database not found. It will be created on first run.
)

REM Check required files
echo 🔍 Verifying required files...
setlocal enabledelayedexpansion
set required_files=bot.py database.py utils.py bot_manager.py requirements.txt countries.json
for %%f in (%required_files%) do (
    if not exist %%f (
        echo ❌ Error: %%f not found!
        exit /b 1
    )
)
echo ✅ All required files present

REM Verify bot token
findstr /m "BOT_TOKEN=your_bot_token_here" .env >nul
if %errorlevel% equ 0 (
    echo ⚠️ WARNING: BOT_TOKEN not configured in .env
)

REM Test imports
echo 🧪 Testing Python imports...
python -c "import bot; import database; import utils; import bot_manager; print('✅ All imports successful')"
if %errorlevel% neq 0 (
    echo ❌ Import test failed!
    exit /b 1
)

REM Start bot
echo 🤖 Starting Crack SMS Bot...
echo ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
python bot.py

pause
