# 🚀 DEPLOYMENT GUIDE — Crack SMS Bot

Complete guide to deploy the Crack SMS Bot to Railway, Heroku, Docker, or local server.

---

## 📋 Table of Contents
1. [Quick Start (Railway)](#quick-start-railway)
2. [Local Development](#local-development)
3. [Docker Deployment](#docker-deployment)
4. [Railway Deployment](#railway-deployment)
5. [Heroku Deployment (Legacy)](#heroku-deployment)
6. [Environment Setup](#environment-setup)
7. [Troubleshooting](#troubleshooting)

---

## 🚀 Quick Start (Railway)

### Prerequisites
- GitHub account
- Railway account (https://railway.app)
- Telegram Bot Token (get from @BotFather)

### Steps

1. **Fork/Clone Repository**
   ```bash
   git clone https://github.com/yourusername/CRACK.git
   cd CRACK
   ```

2. **Create `.env` file**
   ```bash
   cp .env.example .env
   # Edit .env with your settings
   ```

3. **Push to GitHub**
   ```bash
   git add .
   git commit -m "deployment: initial setup"
   git push origin main
   ```

4. **Deploy on Railway**
   - Visit https://railway.app
   - Click "New Project" → "Deploy from GitHub"
   - Select your repository
   - Railway will auto-detect and deploy!

5. **Monitor Deployment**
   - Go to Railway Dashboard
   - Check "Logs" tab for real-time output
   - Verify "Status: Success"

---

## 💻 Local Development

### Setup

```bash
# 1. Create virtual environment
python -m venv venv

# 2. Activate environment
# On Linux/Mac:
source venv/bin/activate
# On Windows:
venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt

# 4. Configure .env
cp .env.example .env
# Edit with your BOT_TOKEN and other settings

# 5. Run bot
python bot.py
```

### Using Startup Scripts

**Linux/Mac:**
```bash
chmod +x start.sh
./start.sh
```

**Windows:**
```cmd
start.bat
```

---

## 🐳 Docker Deployment

### Prerequisites
- Docker and Docker Compose installed
- All configuration in `.env` file

### Build and Run

```bash
# Build image
docker build -t crack-sms-bot .

# Run container
docker run -d \
  --name bot \
  --restart always \
  -v $(pwd)/sms_database_np.db:/app/sms_database_np.db \
  -v $(pwd)/config.json:/app/config.json \
  crack-sms-bot

# View logs
docker logs -f bot
```

### Using Docker Compose

```bash
# Start all services
docker-compose up -d

# View logs
docker-compose logs -f bot

# Stop services
docker-compose down

# Restart
docker-compose restart bot
```

### Docker Compose Features
- ✅ Automatic restart on failure
- ✅ Volume persistence for database
- ✅ Health checks every 30s
- ✅ Resource limits (512MB RAM, 1 CPU)
- ✅ Proper logging with rotation
- ✅ Network isolation

---

## 🚂 Railway Deployment (Advanced)

### Configuration

The `railway.toml` file controls deployment:

```toml
[build]
buildCommand = "pip install -r requirements.txt"

[deploy]
startCommand = "python bot.py"
restartPolicyType = "always"
restartPolicyMaxRetries = 5

[env]
PYTHONUNBUFFERED = "1"
ENVIRONMENT = "production"
```

### Railway Environment Variables

Set in Railway Dashboard:

1. **Required Variables**
   - `BOT_TOKEN` - Telegram bot token
   - `INITIAL_ADMIN_IDS` - Admin user IDs (comma-separated)

2. **Optional Variables**
   - `CHANNEL_LINK` - Discord/Telegram channel
   - `DEVELOPER` - Developer username
   - `DEBUG` - Set to "false" for production

### Deployment Steps

1. Connect GitHub repository
2. Select Python runtime (automatically detected)
3. Set environment variables
4. Deploy branch selected
5. Monitor in "Deployments" tab

### Railway Console Access

```bash
# View logs
railway logs

# SSH into container (if enabled)
railway shell

# Deploy specific branch
railway deploy --branch main
```

---

## 🔄 Heroku Deployment (Legacy)

### Prerequisites
- Heroku CLI installed
- Heroku account

### Deploy

```bash
# 1. Login to Heroku
heroku login

# 2. Create app
heroku create your-app-name

# 3. Set environment variables
heroku config:set BOT_TOKEN=your_token
heroku config:set INITIAL_ADMIN_IDS=123456789

# 4. Deploy
git push heroku main

# 5. View logs
heroku logs --tail

# 6. View scale
heroku ps:scale worker=1
```

---

## ⚙️ Environment Setup

### Critical Variables

```env
# Telegram
BOT_TOKEN=<your_bot_token_from_BotFather>
BOT_USERNAME=YourBotName

# Admins
INITIAL_ADMIN_IDS=123456789,987654321

# Links
CHANNEL_LINK=https://t.me/yourchannel
OTP_GROUP_LINK=https://t.me/yourgroup
```

### Optional Variables

```env
# Panel Settings
DEFAULT_ASSIGN_LIMIT=4
API_FETCH_INTERVAL=1

# Features
AUTO_BROADCAST_ON=false
ENABLE_ANALYTICS=true

# Performance
MAX_WORKERS=4
ASYNC_TIMEOUT=30
```

### Database Setup

The bot auto-creates the database on first run:
- SQLite: `sms_database_np.db`
- PostgreSQL: Set `DATABASE_URL` environment variable

```env
# PostgreSQL example
DATABASE_URL=postgresql://user:password@localhost:5432/botdb
```

---

## 🔍 Monitoring

### Railway Dashboard
- ✅ Build logs in "Deployments"
- ✅ Runtime logs in "Logs" tab
- ✅ Memory/CPU usage in "Usage"
- ✅ Network traffic statistics

### Health Checks
Bot includes health check endpoint:
- Interval: 30 seconds
- Timeout: 5 seconds
- Retries: 3 attempts
- Restart on failure: automatic

### Logging
- Level: INFO (configurable)
- File: `bot.log`
- Max size: 10MB with 5 backups
- Format: Timestamp | Level | Message

---

## 🐛 Troubleshooting

### Deployment Fails

**Error: "Python version mismatch"**
- Solution: Check `runtime.txt` contains `python-3.11.10`

**Error: "No module named 'bot'"**
- Solution: Run `pip install -r requirements.txt`

### Bot Not Responding

**Check 1: Verify token**
```bash
curl "https://api.telegram.org/bot<TOKEN>/getMe"
```

**Check 2: View logs**
```bash
# Railway
railway logs

# Docker
docker logs -f bot

# Local
tail -f bot.log
```

**Check 3: Test imports**
```bash
python -c "import bot; print('✅ Bot module working')"
```

### Missing Database

- Bot auto-creates on first run
- Check permissions if file creation fails
- Verify disk space available

### Memory Issues

- Reduce `MAX_WORKERS` in .env
- Check for memory leaks in logs
- Restart container: `docker restart bot`

### Slow Response

**Optimize:**
1. Increase `ASYNC_TIMEOUT`
2. Reduce `API_MAX_RECORDS`
3. Check panel server speed
4. Enable caching (if available)

---

## 📊 Performance Tuning

### Recommended Settings

```env
# For Railway/Heroku (512MB RAM)
MAX_WORKERS=4
ASYNC_TIMEOUT=30
API_FETCH_INTERVAL=1
CONNECTION_POOL_SIZE=10

# For Large Deployments (1GB+ RAM)
MAX_WORKERS=8
ASYNC_TIMEOUT=60
API_FETCH_INTERVAL=2
CONNECTION_POOL_SIZE=20
```

### Memory Optimization

- Enable SQLAlchemy pool pre-ping: `pool_pre_ping=True`
- Set reasonable `API_MAX_RECORDS` limit
- Monitor with: `docker stats`

---

## ✅ Deployment Checklist

- [ ] `.env` file created with all required variables
- [ ] `requirements.txt` contains all dependencies
- [ ] `runtime.txt` set to Python 3.11.10
- [ ] `railway.toml` configured correctly
- [ ] `Dockerfile` includes all build steps
- [ ] Health check configured
- [ ] Logs configured for monitoring
- [ ] Database volume mounted (Docker)
- [ ] Admin IDs configured
- [ ] Bot token verified to work
- [ ] Test message sent to bot
- [ ] Deployment successful in dashboard

---

## 🔗 Useful Links

- [Railway Documentation](https://docs.railway.app)
- [Telegram Bot API](https://core.telegram.org/bots/api)
- [Python Telegram Bot](https://python-telegram-bot.readthedocs.io/)
- [Docker Documentation](https://docs.docker.com)

---

## 📞 Support

- GitHub Issues: Report bugs
- Telegram: @ownersigma (support)
- Email: Send detailed error logs

---

**Last Updated:** April 2026
**Version:** 3.1
**Status:** Production Ready ✅
