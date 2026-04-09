# 🚀 PRODUCTION SETUP GUIDE — Crack SMS Bot on Railway

Complete step-by-step guide for production deployment.

---

## ✅ Pre-Deployment Checklist

### System Requirements
- [ ] Telegram Bot Token (from @BotFather)
- [ ] GitHub account with access to bot repository
- [ ] Railway account (free tier OK)
- [ ] Admin user IDs for bot control

### Code Requirements
- [ ] All files committed to GitHub
- [ ] .env.example created with all variables
- [ ] requirements.txt up to date
- [ ] runtime.txt set to python-3.11.10
- [ ] railway.toml configured
- [ ] Dockerfile present and tested
- [ ] Bot has been tested locally

---

## 🔧 Step 1: Prepare Repository

### Clone and Setup Locally

```bash
# 1. Clone repository
git clone https://github.com/yourusername/CRACK.git
cd CRACK

# 2. Create virtual environment
python -m venv venv
source venv/bin/activate  # Linux/Mac
# or
venv\Scripts\activate      # Windows

# 3. Install dependencies
pip install -r requirements.txt

# 4. Create and configure .env file
cp .env.example .env
# Edit .env with your Telegram bot token and settings
nano .env  # or use your editor
```

### Required Environment Variables

```env
BOT_TOKEN=<get_from_BotFather>
BOT_USERNAME=YourBotUsername
INITIAL_ADMIN_IDS=<your_user_id>
CHANNEL_LINK=https://t.me/yourchannel
OTP_GROUP_LINK=https://t.me/yourgroup
DEVELOPER=@yourusername
SUPPORT_USER=@yoursupport
```

### Test Locally

```bash
# Run bot locally
python bot.py

# In another terminal, send a test message
# /start command to your bot

# Check that bot responds
# Press Ctrl+C to stop
```

---

## 📦 Step 2: Configure Files for Railway

### Update runtime.txt

```
python-3.11.10
```

### Update requirements.txt
Ensure all dependencies are specified with versions:

```
python-telegram-bot>=20.3
sqlalchemy>=2.0.0
aiohttp>=3.8.0
beautifulsoup4>=4.11.0
phonenumbers>=8.12.0
```

### Verify railway.toml

```toml
[build]
buildCommand = "pip install -r requirements.txt"

[deploy]
startCommand = "python bot.py"
restartPolicyType = "always"
restartPolicyMaxRetries = 5

[environments.production]
startCommand = "python bot.py"

[env]
PYTHONUNBUFFERED = "1"
ENVIRONMENT = "production"
```

---

## 🐳 Step 3: Test with Docker

### Build Docker Image

```bash
# Build image
docker build -t crack-sms-bot:latest .

# Run container
docker run -d \
  --name crack-sms-bot-test \
  -e BOT_TOKEN=your_token \
  -e INITIAL_ADMIN_IDS=123456789 \
  -v $(pwd)/sms_database_np.db:/app/sms_database_np.db \
  crack-sms-bot:latest

# Check logs
docker logs -f crack-sms-bot-test

# Clean up
docker stop crack-sms-bot-test
docker rm crack-sms-bot-test
```

---

## 🚂 Step 4: Deploy to Railway

### Option A: Using Railway Dashboard (Recommended)

1. **Create Railway Account**
   - Visit https://railway.app
   - Sign up/Login

2. **Create New Project**
   - Click "New Project"
   - Select "Deploy from GitHub"

3. **Connect GitHub Repository**
   - Authorize Railway to access GitHub
   - Select your CRACK repository
   - Choose branch (main/master)

4. **Configure Environment Variables**
   - Go to "Variables" tab
   - Add all required variables:
     ```
     BOT_TOKEN: <your_token>
     INITIAL_ADMIN_IDS: <admin_ids>
     CHANNEL_LINK: https://t.me/channel
     DEBUG: false
     ENVIRONMENT: production
     ```

5. **Deploy**
   - Click "Deploy"
   - Wait for build to complete
   - Monitor in "Deployments" tab

### Option B: Using Railway CLI

```bash
# 1. Install Railway CLI
npm install -g @railway/cli
# or use pre-built binary from https://railway.app/cli

# 2. Login
railway login

# 3. Create project
railway init

# 4. Link GitHub repo
railway link

# 5. Set environment variables
railway variables set BOT_TOKEN=<token>
railway variables set INITIAL_ADMIN_IDS=<ids>

# 6. Deploy
railway up

# 7. View logs
railway logs

# 8. Watch status
railway status
```

---

## ✨ Step 5: Verify Deployment

### Check Deployment Status

1. **In Railway Dashboard**
   - Go to "Deployments" tab
   - Status should show "Success" (green)
   - Build time should be < 5 minutes

2. **View Logs**
   - Click on deployment
   - View full logs
   - Look for "✅" messages indicating successful startup

3. **Test Bot**
   - Find bot on Telegram
   - Send `/start` command
   - Bot should respond with menu

### Troubleshooting

```bash
# If deployment fails, check:
# 1. Build logs for errors
# 2. Environment variables are set
# 3. requirements.txt syntax
# 4. runtime.txt format

# Common errors:
# "ModuleNotFoundError" → Missing from requirements.txt
# "BOT_TOKEN not found" → Env variable not set
# "Connection timeout" → Railway quota issue or firewall
```

---

## 🔄 Step 6: Post-Deployment Setup

### Admin Configuration

1. **Set Yourself as Admin**
   ```env
   INITIAL_ADMIN_IDS=<your_telegram_user_id>
   ```

2. **Add More Admins** (in bot)
   - Use `/addadmin` command in bot
   - Grant permissions via admin menu

### Configure Panels

1. **Add OTP Panels**
   - Go to Admin Panel → Panel Manager
   - Add panels (Login/API/IVAS type)
   - Test connections

2. **Upload Numbers**
   - Admin Panel → Numbers Manager
   - Upload SMS numbers
   - Configure services

### Test All Features

1. **Get Number**
   - Use "Get Number" feature
   - Test OTP receipt
   - Verify database

2. **Admin Features**
   - View stats
   - Check logs
   - Test broadcasts

---

## 📊 Monitoring & Maintenance

### Daily Monitoring

- Check logs daily for errors
- Monitor panel connection status
- Verify OTP delivery rate

### Weekly Maintenance

```bash
# Check logs
railway logs --lines 100

# View resource usage
railway resources

# Restart if needed
railway restart
```

### Monthly Optimization

- Review and adjust `DEFAULT_ASSIGN_LIMIT`
- Check database size
- Verify backup procedures
- Update dependencies if needed

```bash
# Update requirements
pip install --upgrade -r requirements.txt
# Test locally before pushing
# Push to GitHub
# Railway auto-redeploys
```

---

## 🔒 Security Best Practices

### Protect Secrets

```bash
# NEVER commit .env file
# NEVER share BOT_TOKEN
# Use strong admin passwords
# Enable 2FA on accounts

# In .gitignore:
.env
config.json
otp_store.json
```

### Database Security

```bash
# Use strong database password
# Enable SSL for database connections
# Regular backups of sms_database_np.db
# Monitor access logs
```

### Bot Security

```bash
# Only trust admin IDs
# Log all admin actions
# Monitor error logs for attacks
# Update dependencies regularly
```

---

## 📈 Scaling for Production

### Resource Limits (Railway Free)
- 512MB RAM (default)
- 100GB egress/month
- 1 shared CPU

### When to Upgrade

- Memory errors: Increase to 1GB
- Timeout issues: Increase CPU allocation
- Many panels: Use PostgreSQL instead of SQLite

### Upgrade Steps

1. Railway Dashboard → Resources
2. Increase RAM/CPU
3. Change DATABASE_URL if using PostgreSQL
4. Redeploy

---

## 🚨 Emergency Procedures

### Bot Not Responding

```bash
# 1. Check logs
railway logs

# 2. Manual restart
railway restart

# 3. Rollback deployment
railway rollback

# 4. Check token validity
# Test with curl:
curl "https://api.telegram.org/bot<TOKEN>/getMe"
```

### Database Issues

```bash
# 1. Backup database
railway exec -- cp sms_database_np.db sms_database_np.db.backup

# 2. Check size
railway exec -- ls -lh sms_database_np.db

# 3. Vacuum database (optimize)
railway exec -- sqlite3 sms_database_np.db "VACUUM;"
```

### High RAM Usage

```bash
# 1. Check for memory leaks
railway logs | grep -i memory

# 2. Restart to clear memory
railway restart

# 3. Reduce MAX_WORKERS in .env
# 4. Redeploy
```

---

## ✅ Final Checklist

Data & Configuration
- [ ] All admin IDs configured
- [ ] Bot token tested and working
- [ ] Links properly set in environment
- [ ] Database backup in place

Functionality
- [ ] Bot responds to /start
- [ ] Admin panel accessible
- [ ] Numbers can be fetched
- [ ] OTPs delivered successfully
- [ ] All panels connected

Performance
- [ ] Deployment uses <5 minutes
- [ ] Bot starts in <30 seconds
- [ ] Responds to commands in < 2 seconds
- [ ] Memory stable around 200-300MB

Monitoring
- [ ] Daily log checks scheduled
- [ ] Error alerts configured
- [ ] Backup procedure in place
- [ ] Team notified of deployment

---

## 📞 Getting Help

### Issues and Debugging

1. **Check Bot Logs**
   ```bash
   railway logs --follow
   ```

2. **Check Telegram Bot Status**
   ```bash
   curl https://api.telegram.org/bot<TOKEN>/getMe
   ```

3. **View Railway Metrics**
   - Dashboard → Monitor
   - Check CPU, Memory, Network

4. **GitHub Issues**
   - Search existing issues
   - Create new issue with logs

### Contact

- **Support**: @ownersigma (Telegram)
- **Developer**: @NONEXPERTCODER (Telegram)
- **Email**: support@example.com

---

**Deployment Status: ✅ PRODUCTION READY**
**Last Updated: April 2026**
**Version: 3.1.0**
