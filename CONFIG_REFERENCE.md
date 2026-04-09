# ⚙️ CONFIGURATION REFERENCE — Crack SMS Bot

Complete guide to all configuration options and environment variables.

---

## 📋 Table of Contents
1. [Quick Reference](#quick-reference)
2. [Telegram Settings](#telegram-settings)
3. [Admin Settings](#admin-settings)
4. [Panel Settings](#panel-settings)
5. [OTP Settings](#otp-settings)
6. [Deployment Settings](#deployment-settings)
7. [Feature Flags](#feature-flags)
8. [Performance Tuning](#performance-tuning)

---

## 🚀 Quick Reference

### Essential Variables (Required)

| Variable | Example | Description |
|----------|---------|-------------|
| `BOT_TOKEN` | `7952943119:AAFGuZi...` | Telegram bot token from @BotFather |
| `INITIAL_ADMIN_IDS` | `123456789,987654321` | Comma-separated admin user IDs |
| `BOT_USERNAME` | `CrackSMSReBot` | Bot's Telegram username |

### Common Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `CHANNEL_LINK` | `https://t.me/crackotp` | Updates channel link |
| `OTP_GROUP_LINK` | `https://t.me/crackotpgroup` | Community group link |
| `DEVELOPER` | `@NONEXPERTCODER` | Developer Telegram handle |
| `DEBUG` | `false` | Enable debug logging |

---

## 🤖 Telegram Settings

### Bot Configuration

```env
# Bot token from @BotFather
BOT_TOKEN=7952943119:AAFGuZiurY4yiaTCPwkrmsH51EUayr_DUFU

# Bot's Telegram username (without @)
BOT_USERNAME=CrackSMSReBot

# Developer's Telegram handle
DEVELOPER=@NONEXPERTCODER

# Support contact
SUPPORT_USER=@ownersigma
```

### Links & Resources

```env
# Channel for announcements
CHANNEL_LINK=https://t.me/crackotp

# Community group
OTP_GROUP_LINK=https://t.me/crackotpgroup

# Bot link for getting numbers
NUMBER_BOT_LINK=https://t.me/CrackSMSReBot

# Alternative URL for number requests
GET_NUMBER_URL=https://t.me/CrackSMSReBot
```

---

## 👑 Admin Settings

### User IDs

```env
# Super admins (full access, comma-separated)
INITIAL_ADMIN_IDS=7763727542,7057157722,7968271742

# Single admin
INITIAL_ADMIN_IDS=7763727542

# Multiple admins
INITIAL_ADMIN_IDS=123456789,987654321,555666777
```

### Admin Permissions (in-bot)

Available permissions:
- `manage_files` - Upload/delete phone numbers
- `manage_panels` - Add/edit/delete panels
- `view_stats` - View statistics
- `broadcast` - Send broadcasts
- `manage_logs` - Configure log groups
- `manage_admins` - Add/remove admins

---

## 🔌 Panel Settings

### Panel Configuration

```env
# Fetch interval (seconds) - how often to check for new SMS
API_FETCH_INTERVAL=1

# Maximum SMS records to fetch per check
API_MAX_RECORDS=200

# Default request timeout (seconds)
DEFAULT_API_TIMEOUT=30

# Pool size for concurrent connections
CONNECTION_POOL_SIZE=10

# Max workers for concurrent operations
MAX_WORKERS=4
```

### Panel Types

1. **Login Panel**
   - Username + Password authentication
   - Session-based
   - Auto-login support

2. **API Panel**
   - API key authentication
   - Direct HTTP requests
   - Fastest performance

3. **IVAS Panel**
   - WebSocket connection
   - Real-time SMS delivery
   - Requires URI configuration

---

## 📱 OTP Settings

### OTP Management

```env
# Default number assignment limit per user
DEFAULT_ASSIGN_LIMIT=4

# Hours before OTP expires
OTP_VALIDITY_HOURS=24

# Cooldown between number changes (seconds)
CHANGE_COOLDOWN_S=7

# Hours before number enters cooldown
RETENTION_HOURS=12

# OTP storage file
OTP_STORAGE_FILE=otp_store.json

# GUI theme (0-29)
OTP_GUI_THEME=0
```

### Theme Options

- 0-4: Classic designs
- 5-9: Modern themes
- 10-14: Dark themes
- 15-19: Colorful themes
- 20-24: Professional themes
- 25-29: Premium themes

---

## 📊 Database Settings

### SQLite Configuration (Default)

```env
# SQLite database file
DATABASE_URL=sqlite:///./sms_database_np.db

# Enable echo logging for SQL queries
DB_ECHO=false
```

### PostgreSQL Configuration

```env
# PostgreSQL connection string
DATABASE_URL=postgresql://user:password@localhost:5432/botdb

# Connection pool size
CONNECTION_POOL_SIZE=10

# Pool recycling interval (seconds)
POOL_RECYCLE=3600
```

---

## 🚀 Deployment Settings

### Environment

```env
# Production/Development/Testing
ENVIRONMENT=production

# Enable debug mode (verbose logging)
DEBUG=false

# Timezone for timestamps
TIMEZONE=UTC
```

### Build & Runtime

```env
# Python encoding
PYTHONIOENCODING=utf-8

# Unbuffered output
PYTHONUNBUFFERED=1

# Log level
LOG_LEVEL=INFO
```

### Child Bot Settings

```env
# Is this a child bot?
IS_CHILD_BOT=false

# Main bot webhook URL (for child→main OTP forwarding)
CHILD_BOT_FORWARD_URL=https://mainbot.example.com/webhook
```

---

## 🎯 Feature Flags

### Core Features

```env
# Enable premium tier system
ENABLE_PREMIUM=true

# Enable analytics dashboard
ENABLE_ANALYTICS=true

# Enable webhook system
ENABLE_WEBHOOKS=true

# Enable broadcast scheduling
ENABLE_SCHEDULING=true

# Auto-broadcast when numbers added
AUTO_BROADCAST_ON=false
```

### User Limits

```env
# Maximum panels for free tier
FREE_USERS_MAX_PANELS=2

# Maximum panels for pro tier
PRO_USERS_MAX_PANELS=10

# Maximum panels for enterprise tier
ENTERPRISE_USERS_MAX_PANELS=50

# Daily OTP limit (-1 = unlimited)
DAILY_OTP_LIMIT=-1
```

---

## ⚡ Performance Tuning

### Optimization Settings

```env
# Async operation timeout (seconds)
ASYNC_TIMEOUT=30

# Request timeout (seconds)
REQUEST_TIMEOUT=15

# Database connection pool size
CONNECTION_POOL_SIZE=10

# Concurrent worker threads
MAX_WORKERS=4

# API rate limit (requests per minute)
API_RATE_LIMIT=100
API_RATE_WINDOW=60
```

### Memory Settings

```env
# Enable garbage collection
ENABLE_GC=true

# GC interval (seconds)
GC_INTERVAL=300

# Max memory usage (MB) - 0 = unlimited
MAX_MEMORY_MB=0
```

---

## 📝 Logging Configuration

### Log Settings

```env
# Log level: DEBUG, INFO, WARNING, ERROR, CRITICAL
LOG_LEVEL=INFO

# Log file path
LOG_FILE=bot.log

# Maximum log file size (bytes) - 10MB default
MAX_LOG_SIZE=10485760

# Number of log backups to keep
LOG_BACKUP_COUNT=5

# Log format
LOG_FORMAT=%(asctime)s | %(levelname)-8s | %(message)s
```

### Log File Rotation

- Automatic rotation at 10MB
- Keeps last 5 files
- Old files: `bot.log.1`, `bot.log.2`, etc.

---

## 🌍 Localization & Regional

### Timezone

```env
# Timezone for all timestamps
# Options: UTC, America/New_York, Europe/London, Asia/Tokyo, etc.
TIMEZONE=UTC
```

### Language

```env
# Bot interface language
LANGUAGE=en

# Supported: en (English), ru (Russian), other translations
```

---

## 🔒 Security Settings

### Token & Auth

```env
# Main bot token
BOT_TOKEN=<keep_secret>

# API keys (if using custom APIs)
API_KEY_1=<keep_secret>
API_KEY_2=<keep_secret>
```

### Access Control

```env
# Only allow listed user IDs
RESTRICT_USER_IDS=123456789,987654321

# Block specific countries (ISO codes)
BLOCKED_COUNTRIES=IR,KP

# Rate limit per user (requests per minute)
USER_RATE_LIMIT=30
```

---

## 🎛️ Advanced Options

### Cache Settings

```env
# Enable response caching
ENABLE_CACHE=true

# Cache TTL (seconds)
CACHE_TTL=300

# Cache max size
CACHE_MAX_SIZE=1000
```

### Webhook Configuration

```env
# Webhook port
WEBHOOK_PORT=8443

# Webhook URL
WEBHOOK_URL=https://yourdomain.com/webhook

# Webhook secret (HMAC)
WEBHOOK_SECRET=your_secret_key
```

---

## 📋 Configuration Examples

### Minimal Setup

```env
BOT_TOKEN=your_token
INITIAL_ADMIN_IDS=123456789
BOT_USERNAME=YourBot
```

### Standard Setup

```env
BOT_TOKEN=your_token
INITIAL_ADMIN_IDS=123456789
BOT_USERNAME=YourBot
CHANNEL_LINK=https://t.me/yourchannel
OTP_GROUP_LINK=https://t.me/yourgroup
DEFAULT_ASSIGN_LIMIT=4
DEBUG=false
ENVIRONMENT=production
```

### Production Setup

```env
BOT_TOKEN=your_token
INITIAL_ADMIN_IDS=123456789,987654321
BOT_USERNAME=YourBot
CHANNEL_LINK=https://t.me/yourgithub
OTP_GROUP_LINK=https://t.me/yourgroup
DEVELOPER=@yourname
SUPPORT_USER=@yousupport

# Database
DATABASE_URL=postgresql://user:pass@db.railway.internal/bot

# Performance
MAX_WORKERS=8
ASYNC_TIMEOUT=60
CONNECTION_POOL_SIZE=20

# Features
ENABLE_PREMIUM=true
ENABLE_ANALYTICS=true
AUTO_BROADCAST_ON=true

# Logging
LOG_LEVEL=INFO
DEBUG=false
ENVIRONMENT=production
```

---

## 🔄 Updating Configuration

### Local Development

```bash
# 1. Edit .env file
nano .env

# 2. Restart bot
# Stop bot (Ctrl+C)
# Start bot again
python bot.py
```

### Railway/Heroku

```bash
# 1. Update .env (locally)
nano .env

# 2. Git commit and push
git add .env.example  # only commit example file
git commit -m "config: update environment variables"
git push origin main

# 3. Update variables in Railway/Heroku dashboard
# Railway: Variables tab
# Heroku: heroku config:set KEY=value

# 4. Automatic redeploy (on Railway)
```

### Docker

```bash
# Use docker-compose.yml or docker run -e flags
docker run -e BOT_TOKEN=token -e INITIAL_ADMIN_IDS=123 crack-sms-bot

# Or in docker-compose.env file
environment:
  - BOT_TOKEN=token
  - INITIAL_ADMIN_IDS=123
```

---

## ⚠️ Common Mistakes

```env
# ❌ WRONG: Missing token
BOT_TOKEN=

# ✅ CORRECT: Valid token
BOT_TOKEN=1234567890:ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefgh

# ❌ WRONG: Space in token
BOT_TOKEN = 1234567890:ABC

# ✅ CORRECT: No spaces
BOT_TOKEN=1234567890:ABC

# ❌ WRONG: One admin ID as string
INITIAL_ADMIN_IDS="123456789"

# ✅ CORRECT: No quotes for values
INITIAL_ADMIN_IDS=123456789

# ❌ WRONG: URL without https
CHANNEL_LINK=t.me/channel

# ✅ CORRECT: Full URL
CHANNEL_LINK=https://t.me/channel
```

---

## 📊 Monitoring Configuration

```bash
# View current config
railway variables

# Set variable
railway variables set BOT_TOKEN=newtoken

# Verify deployment
railway logs --follow

# Check resources
railway resources
```

---

## 🔗 Environment Variable Reference

See `.env.example` for complete list of all available variables with descriptions and defaults.

---

**Configuration Version:** 3.1.0
**Last Updated:** April 2026
**Status:** Production Ready ✅
