#!/bin/bash
# ═══════════════════════════════════════════════════════════
# CRACK SMS BOT — DEPLOYMENT SCRIPT
# ═══════════════════════════════════════════════════════════

set -e

echo "🚀 Starting Crack SMS Bot deployment..."

# Check Python version
PYTHON_VERSION=$(python --version 2>&1 | awk '{print $2}')
echo "✅ Python version: $PYTHON_VERSION"

# Check if .env exists
if [ ! -f .env ]; then
    echo "⚠️  .env file not found. Creating from .env.example..."
    cp .env.example .env
    echo "📝 Please update .env with your settings"
fi

# Install dependencies
echo "📦 Installing dependencies..."
pip install --upgrade pip setuptools wheel
pip install -r requirements.txt

# Verify database
echo "🗄️  Checking database..."
if [ ! -f sms_database_np.db ]; then
    echo "📝 Database not found. It will be created on first run."
fi

# Check required files
echo "🔍 Verifying required files..."
required_files=("bot.py" "database.py" "utils.py" "bot_manager.py" "requirements.txt" "countries.json")
for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        echo "❌ Error: $file not found!"
        exit 1
    fi
done
echo "✅ All required files present"

# Verify bot token
if grep -q "BOT_TOKEN=your_bot_token_here" .env; then
    echo "⚠️  WARNING: BOT_TOKEN not configured in .env"
fi

# Test imports
echo "🧪 Testing Python imports..."
python -c "
import bot
import database
import utils
import bot_manager
print('✅ All imports successful')
" || {
    echo "❌ Import test failed!"
    exit 1
}

# Start bot
echo "🤖 Starting Crack SMS Bot..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
exec python bot.py
