# 🚀 Crack SMS v21 — Professional Telegram OTP Bot

> **Enterprise-grade Telegram OTP bot with 30 unique GUI themes, real-time SMS panels, privacy-focused OTP delivery, professional broadcast system, and AI-powered admin panel. Built for scale, security, and seamless user experience.**

---

<div align="center">

![Python](https://img.shields.io/badge/Python-3.11%2B-blue?style=flat-square&logo=python)
![Telegram](https://img.shields.io/badge/Telegram-Bot%20API-0088cc?style=flat-square&logo=telegram)
![SQLAlchemy](https://img.shields.io/badge/SQLAlchemy-2.0%2B-red?style=flat-square&logo=database)
![Status](https://img.shields.io/badge/Status-Production%20Ready-green?style=flat-square)
![License](https://img.shields.io/badge/License-Proprietary-orange?style=flat-square)

**[Features](#-features) • [Installation](#-installation) • [Deployment](#-deployment) • [Admin Docs](#-admin-panel) • [Support](#-support)**

</div>

---

## 📋 Table of Contents

- [Core Features](#-features)
- [User Features](#user-features)
- [Admin Features](#-admin-features)
- [Architecture](#-architecture)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Configuration](#-configuration)
- [OTP GUI Themes](#-otp-gui-themes)
- [Deployment](#-deployment)
- [Admin Commands & Panel](#-admin-panel)
- [API Reference](#-api-reference)
- [Troubleshooting](#-troubleshooting)
- [Contributing](#-contributing)
- [Support](#-support)

---

## ✨ Core Features

### 🔐 **Privacy-First OTP Delivery**
- ✅ **Group Message Security** — OTP codes hidden with emoji indicators (🔐 ★★★★★★★★) in group chats
- ✅ **DM Code Visibility** — Full OTP codes displayed in private messages for convenience
- ✅ **Smart Scoping** — Privacy features automatically adapt based on message context
- ✅ **One-Click Copy** — Emoji button instantly copies OTP code to clipboard
- ✅ **Anti-Screenshot** — Styled UI prevents casual metadata exposure

### 🎨 **30 Professional OTP GUI Themes**
- ✅ **Dynamic Designs** — Each theme features unique visual elements (borders, emojis, separators)
- ✅ **Real-time Switching** — Change theme on-the-fly from admin panel (0-29)
- ✅ **Theme Showcase:**
  - **0**: 🔥 CrackOTP Pro — Professional fire-themed design
  - **1**: ⏱️ TempNum Classic — Tree-style hierarchy with connectors
  - **2**: ⚡ Electric Strike — Neon box drawing effects
  - **5**: 👑 Gold Royale — Luxury crown borders
  - **+25 more themes** with distinct personalities
- ✅ **Auto-Detection** — Detects service type and applies appropriate styling

### 📱 **Real-Time Multi-Panel SMS Support**
- ✅ **Multiple Simultaneous Panels** — Run 10+ SMS panels concurrently
- ✅ **Isolated Sessions** — Each panel maintains independent aiohttp session (no cookie leaks)
- ✅ **Auto-Reconnect** — Exponential backoff retry logic with 3-tier failure recovery
- ✅ **Live Status Dashboard** — Real-time panel health, OTP count, session uptime
- ✅ **Panel Types Supported:**
  - **API-Type (CrackSMS)** — Polling-based with date parameter support
  - **IVAS Websocket** — Real-time WebSocket streaming
  - **Reseller API** — Date-based query endpoints
- ✅ **Smart Session Management** — Automatic browser emulation with user-agent rotation

---

## 👥 **User Features**

### 📋 **My OTPs Dashboard** ⭐ NEW!
- ✅ **Active Numbers View** — See all assigned phone numbers in inline buttons
- ✅ **Number Details** — Click any number to view:
  - Full phone number with country emoji
  - Service name and status indicator
  - Last received OTP code
  - Assignment timestamp
  - Retention window
  - Message count
- ✅ **Quick Access** — Filter by service, view history, manage assignments

### 📚 **Professional Tutorial System** ⭐ NEW!
- ✅ **Admin Tutorial Creation** — Multi-step wizard:
  1. **Name** — Tutorial title
  2. **Description** — Optional detailed description
  3. **Type Selection** — Choose: Text Only | Video Only | Text + Video
  4. **Content Upload** — Upload text content and/or video file
- ✅ **User Tutorial Access** — Browse all tutorials with:
  - Content type indicators (📄📹📚)
  - Video preview/playback inline
  - Text content display
  - Combined media support
- ✅ **Searchable Catalog** — Quick find tutorials by title

### 👤 **Enhanced User Profile**
- ✅ **Profile Statistics** — View total OTPs, success rate, active numbers
- ✅ **OTP History** — Browse previous OTPs with timestamps and SMS text
- ✅ **User Settings** — Customize:
  - Phone prefix for auto-filtering
  - Number retention preferences
  - Notification settings
- ✅ **Analytics** — Personal OTP trends, success metrics, service performance

### 💎 **Premium Features**
- ✅ **Number Limits** — Customizable OTP assignment limits per user tier
- ✅ **Priority Queue** — Premium users get numbers first
- ✅ **Advanced Analytics** — Detailed service performance and success rates

---

## 👮 **Admin Features**

### 📢 **Professional Broadcast System** ⭐ NEW!
- ✅ **Multi-Content Broadcast:**
  - **Text Broadcast** — Send styled announcements to all users
  - **Image + Caption** — Broadcast photos with descriptions
  - **Video + Caption** — Distribute video content with metadata
  - **Tutorial Broadcast** — Share educational resources
- ✅ **Real-Time Progress** — Live delivery statistics during broadcast:
  - Progress bar showing sent/failed counts
  - Success rate calculation
  - Error recovery per user
- ✅ **Template System** — Pre-built templates for:
  - Announcements
  - Promotions
  - Maintenance notices
  - Feature updates
- ✅ **Styled Content** — HTML formatting with emojis and decorative elements

### 👤 **User Management Dashboard**
- ✅ **User List** — Browse all users with:
  - User ID and Telegram username
  - Join date and last active
  - Active number count
  - OTP statistics
- ✅ **Number Assignment** — Assign/revoke phone numbers:
  - Category-based filtering
  - Bulk assignment capability
  - Service preference selection
- ✅ **Limit Management** — Set custom OTP limits per user
- ✅ **Prefix Settings** — Configure auto-filter prefixes

### 🔌 **Advanced SMS Panel Management**
- ✅ **Add/Edit/Delete Panels** — Full lifecycle management
- ✅ **Panel Type Selection:**
  - API-based panels with credentials
  - IVAS WebSocket with URI configuration
  - Custom integrations
- ✅ **Real-Time Testing** — Test panel connectivity with single click
- ✅ **Session Monitoring** — View:
  - Login status (🟢 online / 🔴 offline)
  - OTP count per panel
  - Error logs
  - Memory usage
  - Last sync time

### 📊 **Comprehensive Statistics & Analytics**
- ✅ **Live Dashboard** — Real-time metrics:
  - Total/Available/Assigned number counts
  - Active panel count
  - User statistics
  - OTP delivery rate
- ✅ **Historical Reports** — Generate reports for:
  - OTP delivery timeline
  - Service performance
  - User activity trends
  - Panel health history
- ✅ **Database Summary** — Full database statistics and cleanup tools

### 🎨 **Theme Management**
- ✅ **Global Theme Switching** — Change OTP GUI theme instantly (0-29)
- ✅ **Preview Themes** — See how each theme renders before applying
- ✅ **Per-Service Styling** — Different visual styles for different OTP services

### 📋 **Permission System**
- ✅ **Granular Permissions:**
  - `manage_files` — Manage number uploads and categories
  - `manage_panels` — Add/edit/delete SMS panels
  - `manage_logs` — Configure log groups
  - `broadcast` — Send user announcements
  - `view_stats` — Access analytics dashboard
- ✅ **Super Admin Tier** — Full system access
- ✅ **Role-Based UI** — Only show available controls per permission set

### 🤖 **Child Bot Management** (Enterprise)
- ✅ **Create Child Bots** — Spawn independent bot instances:
  - Dedicated database per bot
  - Isolated configuration
  - Separate admin panel
  - Independent user base
- ✅ **Admin Approval** — Review bot creation requests before approval
- ✅ **Per-Bot Management:**
  - Panel configuration
  - User limits
  - Theme selection
  - Link management (channel, group, support)
- ✅ **Folder Structure** — Auto-organized `child_bots/` directory

---

## 🏗️ Architecture

```
┌──────────────────────────────────────────────────────────────┐
│              TELEGRAM BOT (Python) — Main Service            │
│  • Handles user commands (/start, /myprofile, /getnum, etc)  │
│  • Processes admin callbacks (theme, panel, user management) │
│  • Delivers OTP messages to users with styled buttons        │
│  • Broadcasts to log groups with 15-min auto-delete          │
└──────────────┬───────────────────────────────────────────────┘
               │
         ┌─────▼─────────────────────────┐
         │   DATABASE (SQLite/PostgreSQL)│
         │  • Users & permissions        │
         │  • Assigned phone numbers     │
         │  • OTP history & storage      │
         │  • Panel credentials          │
         │  • Log group mappings         │
         └─────┬───────────────────────────┘
               │
        ┌──────▼──────────────────────┐
        │  SMS PANEL WORKERS (Async)  │  (Continuous polling/streaming)
        │  • API-type panels          │  (aiohttp ClientSession per panel)
        │  • IVAS websocket panels    │
        │  • Custom integrations      │
        │  (Isolated session per panel)│
        └──────┬─────────────────────────┘
               │ (extract OTP → process_incoming_sms)
               │
        ┌──────▼────────────────────────────┐
        │  OTP PROCESSING & GUI ENGINE      │
        │  • Country detection              │  (phonenumbers lib)
        │  • OTP extraction (200+ patterns) │  (200+ regex patterns)
        │  • Theme dispatch (30 designs)    │  (build_otp_msg)
        │  • DM to assigned user            │  (Telegram message)
```

### Data Flow: SMS Ingestion → OTP Delivery

1. **Capture** → Panel worker receives SMS from service
2. **Extract** → 200+ regex patterns identify OTP code
3. **Route** → Database lookup finds assigned user
4. **Theme** → Select theme (0-29) and generate styled message
5. **Privacy Check** → Apply privacy mask if in group chat
6. **DM Delivery** → Send to user with copy button
7. **Log Broadcast** → Forward to all configured log groups
8. **Cleanup** → Schedule 15-min auto-delete for logs
9. **Archive** → Store in history with full SMS text
10. **Stat Update** → Update user metrics and panel counters

---

## 📦 Installation

### Prerequisites
```
✅ Python 3.11+
✅ Git
✅ Telegram Bot Token (from @BotFather)
✅ SQLite (built-in) or PostgreSQL
✅ 50MB disk space minimum
```

### Local Development (5 minutes)

```bash
# 1️⃣ Clone repository
git clone https://github.com/Adnan57400/CRACKSMSREBOT.git
cd crack-sms-v21

# 2️⃣ Create virtual environment
python -m venv venv

# Windows:
venv\Scripts\activate
# Linux/Mac:
source venv/bin/activate

# 3️⃣ Install dependencies
pip install -r requirements.txt

# 4️⃣ Configure bot
cp config.example.json config.json
# Edit config.json with your BOT_TOKEN and Admin IDs

# 5️⃣ Initialize database
python -c "import asyncio; from database import init_db; asyncio.run(init_db())"

# 6️⃣ Run bot
python bot.py

# 7️⃣ Test in Telegram
# Send /start to your bot
```

### Using Docker

```bash
# Build image
docker build -t crack-sms:latest .

# Run container
docker run -d \
  -e BOT_TOKEN="your_token" \
  -e DATABASE_URL="sqlite:///bot_database.db" \
  -v crack_data:/app/data \
  crack-sms:latest
```

### Using run.py (Recommended)

```bash
# Automated setup with dependency detection
python run.py

# Features:
# ✅ Auto-installs Python deps
# ✅ Initializes database
# ✅ Validates config.json
# ✅ Starts bot with logging
```

---

## ⚡ Quick Start

### 1. **Start the Bot**
```bash
python bot.py
# Expected output:
# ℹ️ Database initialized
# ℹ️ 5 panels loaded
# ✅ Bot online (polling mode)
```

### 2. **Message Your Bot**
```
/start  → Main menu opens
```

### 3. **Access Admin Panel**
```
Type /admin
```

---

## ⚙️ Configuration

### `config.json` Reference

```json
{
  "BOT_TOKEN": "7952943119:AAFGuZiurY4yiaTCPwkrmsH51EUayr_DUFU",
  "BOT_USERNAME": "CrackSMSReBot",
  "INITIAL_ADMIN_IDS": [7763727542, 7057157722],
  "CHANNEL_LINK": "https://t.me/crackotp",
  "OTP_GROUP_LINK": "https://t.me/crackotpgroup",
  "SUPPORT_USER": "@NONEXPERTCODER",
  "DEVELOPER": "@ownersigma",
  "OTP_GUI_THEME": 0,
  "IS_CHILD_BOT": false,
  "DEFAULT_ASSIGN_LIMIT": 4
}
```

### Environment Variables

| Variable | Default | Type | Description |
|----------|---------|------|-------------|
| `BOT_TOKEN` | *required* | string | Telegram bot token from @BotFather |
| `DATABASE_URL` | `bot_database.db` | string | SQLite path or PostgreSQL URL |
| `OTP_GUI_THEME` | `0` | int | OTP theme ID (0-29) |
| `IS_CHILD_BOT` | `false` | bool | Set true for child bot instances |
| `DEFAULT_ASSIGN_LIMIT` | `4` | int | Default OTP limit per user |

### Railway/Heroku Deployment Variables

```bash
# Set on platform dashboard
BOT_TOKEN=your_token_here
DATABASE_URL=postgresql://user:pass@host:5432/dbname
OTP_GUI_THEME=0
IS_CHILD_BOT=false
```

---

## 🎨 OTP GUI Themes

### Theme Gallery (Select 5 Examples)

| ID | Name | Style | Colors |
|:--:|------|-------|--------|
| 0️⃣ | 🔥 **CrackOTP Pro** | Professional | Fire + Bold |
| 1️⃣ | ⏱️ **TempNum Classic** | Traditional | Time + Structure |
| 2️⃣ | ⚡ **Electric Strike** | Modern Neon | Lightning + Box |
| 5️⃣ | 👑 **Gold Royale** | Luxury | Crown + Glitter |
| 🔟 | 🌈 **Rainbow Neon** | Vibrant | Multi-color |

### Switch Theme (Super Admin)

**GUI Method:**
1. `/admin` → Admin Panel
2. **⚙️ Settings** → **🎨 Theme**
3. Select theme 0-29
4. ✅ Applied immediately

**Command Method:**
```bash
/set_theme 5
# Sets theme to Gold Royale
```

### Theme Preview Example

**Theme 0 (CrackOTP Pro):**
```
━━━━━━━━━━━━━━━━━━━━━━
✅ OTP RECEIVED!

📱 Number: +1234****5678
🔑 Code: 123-456
service: Telegram

💬 Full SMS: Telegram code: 123456...
━━━━━━━━━━━━━━━━━━━━━━
©By @CrackSMSReBot
```

**Theme 5 (Gold Royale):**
```
👑 ━━ Verification Code ━━ 👑

🌟 🇺🇸 Telegram | 🩵 #TG

💎 Number: +1234****5678
💎 OTP: 123-456 💎

📝 Full SMS: Telegram code...
✨ ©By @CrackSMSReBot ✨
```

---

## 🚀 Deployment

### **Railway (Recommended) ✅**

```bash
# 1. Connect GitHub repo
# 2. Railway detects Python project
# 3. Add environment variables in dashboard
# 4. Deploy automatically

# Configuration (railway.toml):
[build]
builder = "nixpacks"
buildCommand = "pip install -r requirements.txt"

[deploy]
startCommand = "python bot.py"
restartPolicyType = "always"
restartPolicyMaxRetries = 10
```

**Expected startup time:** 30-60 seconds

### **Heroku (Legacy)**

```procfile
worker: python bot.py
```

Deploy:
```bash
git push heroku main
```

### **Docker Compose**

```bash
docker-compose up -d
# Includes: Bot + PostgreSQL + Redis
```

### **VPS (Ubuntu 22.04)**

```bash
# Install Python & deps
sudo apt update && sudo apt install python3.11 python3-pip

# Clone & setup
git clone <repo> && cd crack-sms-v21
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Run with systemd
sudo cp crack-sms.service /etc/systemd/system/
sudo systemctl enable crack-sms
sudo systemctl start crack-sms

# View logs
journalctl -u crack-sms -f
```

---

## 👮 Admin Panel

### **User Menu** (/start)

```
🔥  Get Number      👤  My Profile
📊  My Stats        📜  My History
🔐  My OTPs         💎  Premium
📈  Analytics       🤖  Create My Bot
⚙️   Settings        📚  Tutorials
```

### **Feature Breakdown**

#### **🔥 Get Number**
- Select service (WhatsApp, Telegram, Instagram, etc.)
- Choose country with flag emoji
- Assign phone number instantly
- Receive OTP in DM

#### **🔐 My OTPs** (NEW!)
- View all active numbers in inline buttons
- Click number → see full details
- Service name, status, last OTP
- Assignment time, retention window

#### **📚 Tutorials** (NEW!)
- Browse all tutorials created by admins
- View type: Text | Video | Text+Video
- Watch inline videos
- Read detailed guides

#### **👤 My Profile**
- View assigned numbers
- User ID and join date
- Role indicator
- OTP success statistics

#### **📊 My Stats**
- Total OTPs received
- Success rate percentage
- Most active services
- Usage timeline

---

## **Admin Panel** (/admin)

### **First Row: Numbers & Broadcast**
- **📂 Numbers** — Manage user phone numbers
  - View by category
  - Bulk upload
  - Release numbers
  - Purge used/blocked
- **📢 Broadcast** (NEW!) — Send multi-content broadcasts
  - Text announcements
  - Images + captions
  - Videos + descriptions
  - Tutorials
  - Progress tracking
  - Template system

### **Second Row: Statistics & Users**
- **📊 Statistics** — Live dashboard
  - Total/available/assigned counts
  - User metrics
  - Panel status
- **📈 Advanced** — Detailed analytics
  - OTP delivery rates
  - Service performance
  - User trends
  - Historical data
- **👤 Users** (Super Admin) — User management
  - Browse all users
  - View statistics
  - Manage assignments
  - Set limits

### **Third Row: Panels & Logs**
- **🔌 Panels** — SMS panel management
  - Add/edit/delete panels
  - Test connectivity
  - Monitor sessions
  - View error logs
- **📋 Log Groups** — Configure logging
  - Add log chat IDs
  - Manage destinations
  - Auto-delete settings
- **🗑 Clear Logs** — Purge old logs

### **Fourth Row: Admin Control**
- **👥 Admins** (Super Admin) — Manage admins
  - Add/remove admins
  - View permissions
  - Edit roles
- **🔐 Permissions** (Super Admin) — Permission system
  - Grant permissions
  - Revoke access
  - View permission matrix
- **📚 Tutorials** (Super Admin, NEW!) — Tutorial management
  - Create tutorials
  - View all tutorials
  - Edit/delete tutorials
  - Manage content
- **⚙️ Settings** — Configuration options
  - Theme selector
  - Link management
  - Global settings

### **Fifth Row: SMS & Bots**
- **📡 Fetch SMS** — Manual SMS pull
  - Test panel connectivity
  - Force SMS check
  - View last OTPs
- **🤖 Child Bots** (Super Admin) — Bot management
  - Create child bots
  - View active bots
  - Manage deployments
  - Per-bot settings
- **🔧 System** (Super Admin) — System tools
  - Database cleanup
  - Cache clear
  - Log rotation
  - Restart services

---

## 🎯 User Commands Quick Reference

```
/start              → Open main menu
/myprofile          → View profile & numbers
/getnum             → Request new numbers
/mystats            → View OTP statistics
/myhistory          → Browse OTP history
/help               → Get help information
/admin              → Admin panel (admins only)
/addadmin <id>      → Add admin (super admin)
/removeadmin <id>   → Remove admin (super admin)
```

---

## 📈 API Reference

### Database Models

**User**
```python
{
  user_id: int,           # Telegram user ID
  joined_at: datetime,    # Registration date
  custom_limit: int,      # OTP assignment limit
  prefix: str             # Auto-filter prefix
}
```

**Number**
```python
{
  phone_number: str,      # Full phone with country code
  category: str,          # Service/country category
  status: str,            # AVAILABLE | ASSIGNED | RETENTION | BLOCKED
  assigned_to: int,       # User ID
  assigned_at: datetime,  # Assignment timestamp
  last_otp: str,          # Most recent OTP
  last_msg: str,          # Last message timestamp
  retention_until: datetime  # Release time
}
```

**History**
```python
{
  user_id: int,           # User who received OTP
  phone_number: str,      # Number used
  otp: str,               # OTP code
  category: str,          # Service name
  created_at: datetime    # Received timestamp
}
```

**Tutorial** (NEW!)
```python
{
  title: str,             # Tutorial name
  description: str,       # Optional description
  content_type: str,      # 'text' | 'video' | 'both'
  text_content: str,      # Text content
  video_file_id: str,     # Telegram video file ID
  created_by: int,        # Admin user ID
  created_at: datetime    # Created timestamp
}
```

---

## 🔧 Troubleshooting

### ❌ "No OTPs Received"

**Checklist:**
```
✓ Panel logged in?         → Admin → Panels → Check 🟢
✓ Panel has numbers?       → Admin → Numbers → Check
✓ User assigned number?    → Admin → Users → Check
✓ SMS service real?        → Admin → Fetch SMS (manual test)
```

**Fix:**
```bash
# Re-login panel
/admin → Panels → [Name] → Edit → Login

# Test connectivity
/admin → Fetch SMS

# Check logs
tail -f bot.log | grep ERROR
```

### ❌ "OTP Format Looks Wrong"

**Check current theme:**
```
/admin → Settings → Theme → View current
```

**Fix:**
```bash
# Try different theme
/admin → Settings → Theme → Select #1 (most reliable)

# Verify extraction
Check regex patterns: 50+ patterns for common OTP formats
```

### ❌ "Bot Doesn't Respond"

**Verify:**
```bash
# Check if running
ps aux | grep bot.py

# Check token validity
python -c "import requests; requests.get('https://api.telegram.org/botTOKEN/getMe')"

# View logs
tail -100 bot.log
```

### ❌ "Permission Denied" in Admin Panel

**Solution:**
```
1. Get your ID: Message bot with /start (check logs)
2. Add to config.json: "INITIAL_ADMIN_IDS": [YOUR_ID, ...]
3. Restart bot: Ctrl+C then python bot.py
```

### ❌ "Database Locked" Error

**Cause:** Multiple bot instances accessing same SQLite

**Fix:**
```bash
# Use PostgreSQL for production
export DATABASE_URL=postgresql://user:pass@host:5432/db

# Or close other bot instances
pkill -f "python bot.py"
sleep 2
python bot.py
```

---

## 📊 Performance Metrics

| Metric | Value | Notes |
|--------|-------|-------|
| **OTP Delivery** | <2 seconds | From SMS receipt to user DM |
| **Panel Response** | 50-500ms | Depends on panel type |
| **Database Queries** | <10ms | Async SQLAlchemy operations |
| **Memory Usage** | 80-150MB | With 5 panels running |
| **Max panels** | 20+ | Limited by memory/bandwidth |
| **Concurrent users** | 500+ | Per bot instance |

---

## 🔐 Security Best Practices

### ✅ **Never commit secrets**
```bash
# .gitignore
config.json
.env
bot.log
bot_database.db
wa_bridge_state.json
**/*.sqlite
```

### ✅ **Use environment variables**
```bash
export BOT_TOKEN="your_secret_token"
export DATABASE_URL="postgres://..."
```

### ✅ **Enable 2-step verification**
- Telegram account → Settings → Privacy and Security → Two-Step Verification

### ✅ **Rotate credentials regularly**
- Change admin IDs quarterly
- Rotate panel logins monthly
- Audit panel access logs

### ✅ **Limit admin access**
- Grant minimum required permissions
- Use role-based access control (RBAC)
- Monitor admin activity

---

## 📞 Support & Community

| Channel | Purpose |
|---------|---------|
| **GitHub Issues** | Bug reports & feature requests |
| **Telegram Chat** | [@crackotpgroup](https://t.me/crackotpgroup) |
| **Documentation** | [Channel](https://t.me/crackotp) |
| **Developer** | [@NONEXPERTCODER](https://t.me/NONEXPERTCODER) |
| **Owner** | [@ownersigma](https://t.me/ownersigma) |

---

## 🤝 Contributing

We welcome contributions! 

**Process:**
```bash
1. Fork repository
2. Create feature branch: git checkout -b feature/AmazingFeature
3. Commit changes: git commit -m 'Add AmazingFeature'
4. Push to branch: git push origin feature/AmazingFeature
5. Open Pull Request
```

**Code Style:**
- Follow PEP 8
- Use type hints
- Document complex functions
- Add docstrings

---

## 📄 License

**Proprietary** — Crack SMS Professional Edition  
All rights reserved © 2024-2026

---

## 🎯 Roadmap

### Coming Soon 🔄
- [ ] Web dashboard for analytics
- [ ] SMS panel auto-discovery
- [ ] Machine learning OTP detection
- [ ] Multi-language support
- [ ] REST API with API keys
- [ ] Slack/Discord notifications
- [ ] Advanced scheduling
- [ ] Blockchain OTP verification

### Completed ✅
- ✅ 30 OTP GUI themes
- ✅ Privacy-focused message delivery
- ✅ Professional admin panel
- ✅ Multi-panel support
- ✅ Child bot management
- ✅ Tutorial system
- ✅ Broadcast system
- ✅ Advanced analytics

---

## 📈 Version History

| Version | Date | Highlights |
|---------|------|-----------|
| **21.0** | Apr 2026 | Privacy mode, tutorials, broadcasts |
| **20.5** | Mar 2026 | 30 OTP themes, advanced analytics |
| **20.0** | Feb 2026 | Multi-panel, child bots, admin panel |

---

<div align="center">

## 🚀 **Ready to Launch?**

```
🎯 Installation:     python bot.py
📚 Documentation:    /help in Telegram
💬 Support:          @NONEXPERTCODER
🔗 Channel:          @crackotp
```

### **Built With** 🛠️

```
Python 3.11  •  Telegram Bot API  •  SQLAlchemy 2.0
AsyncIO      •  AIOHTTP           •  PostgreSQL
```

---

<div align="center" style="margin-top: 40px; padding: 20px; border-top: 2px solid #0088cc;">

# ⚡ **Powered By**

### **[@NONEXPERTCODER](https://t.me/NONEXPERTCODER)** 👨‍💻

> *Building professional-grade solutions for the Telegram ecosystem since 2022.*

**Follow for updates:**
- 🔗 [Telegram Channel](https://t.me/NONEXPERTCODER)
- 💬 [GitHub](https://github.com/NONEXPERTCODER)
- 📧 Contact: @NONEXPERTCODER

---

### **Co-Author** 👤

### **[@ownersigma](https://t.me/ownersigma)** 

> *Enterprise architecture & SMS integration specialist.*

---

<div align="center">

**Made with ❤️ for the telecommunications & security community**

![Python](https://img.shields.io/badge/Made_with-Python-blue?style=for-the-badge&logo=python)
![Telegram](https://img.shields.io/badge/For-Telegram-0088cc?style=for-the-badge&logo=telegram)

✨ **Star this repo if you find it useful!** ✨

</div>

```bash
python run.py
# Automatically installs Python deps and starts bot
```

---

## ⚙️ Configuration

### `config.json` Structure

```json
{
  "BOT_TOKEN": "7952943119:AAFGuZiurY4yiaTCPwkrmsH51EUayr_DUFU",
  "BOT_USERNAME": "CrackSMSReBot",
  "INITIAL_ADMIN_IDS": [7763727542, 7057157722],
  "CHANNEL_LINK": "https://t.me/crackotp",
  "OTP_GROUP_LINK": "https://t.me/crackotpgroup",
  "SUPPORT_USER": "@NONEXPERTCODER",
  "DEVELOPER": "@ownersigma",
  "OTP_GUI_THEME": 0,
  "IS_CHILD_BOT": false,
  "DEFAULT_ASSIGN_LIMIT": 4
}
```

### Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `BOT_TOKEN` | (required) | Telegram bot token from @BotFather |
| `DATABASE_URL` | `bot_database.db` | SQLite file or PostgreSQL URL (Railway) |
| `OTP_GUI_THEME` | `0` | OTP message theme (0-29) — change to switch designs |
| `IS_CHILD_BOT` | `false` | Set to `true` for child bot instances |
| `DEFAULT_ASSIGN_LIMIT` | `4` | Default number of numbers assigned per user |

---

## 🎨 OTP GUI Themes

30 professional themes — each with unique personality:

| # | Theme Name | Colors | Style |
|---|-----------|--------|-------|
| 0 | 🔥 CrackOTP Pro | Fire emoji, bold | Professional |
| 1 | ⏱ TempNum Classic | Time, structured | Traditional |
| 2 | ⚡ Electric Strike | Lightning, neon | Modern |
| 3 | 🌑 Dark Command | Dark, minimal | Sleek |
| 4 | 🤍 WhiteLine | Clean, white | Minimalist |
| 5 | 👑 Gold Royale | Gold, luxury | Premium |
| 6 | 🚀 JackX Launch | Rocket, modern | Contemporary |
| 7 | 💀 CyberShell | Skull, matrix | Cyberpunk |
| 8-29 | ... | Various | Varied |

### Switch Theme (Super Admin Only)

1. Go to **Admin → Settings → OTP GUI**
2. Select theme (0-29)
3. All future OTPs will use new design

**Preview:**

```
Theme 0 (CrackOTP Pro):
━━━━━━━━━━━━━━━━━━━━━━
✅ OTP RECEIVED!

| 📱 Number: +1234****5678
| 🔑 OTP Code: 123-456

💬 Full SMS text...
©By @CrackSMSReBot

---

Theme 5 (Gold Royale):
👑 ━━ Verification Code ━━ 👑

🌟 🇺🇸 Telegram | 🩵 #TG | +1234****5678

💎 OTP: 123-456 💎

💬 Full SMS text...
✨ ©By @CrackSMSReBot ✨
```

---

## 🚀 Deployment

### Option 1: Railway (Recommended)

```toml
[deploy]
builder = "nixpacks"
startCommand = "python bot.py"
restartPolicyType = "ON_FAILURE"
restartPolicyMaxRetries = 10
```

**Environment:**
```
BOT_TOKEN=your_token_here
DATABASE_URL=postgresql://...  # Railway auto-provides PostgreSQL
OTP_GUI_THEME=0
```

### Option 2: Heroku (Legacy)

```procfile
web: python bot.py
```

### Option 3: Docker

```dockerfile
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "bot.py"]
```

Deploy with Docker Compose:
```bash
docker-compose up --build
```

---

## 📝 Admin Commands

### User Management

| Command | Role | Description |
|---------|------|-------------|
| `/start` | Any | Main menu |
| `/myprofile` | User | View assigned numbers |
| `/getnum` | User | Request new numbers |
| `/admin` | Admin | Admin control panel |

### Admin-Only

| Command | Purpose |
|---------|---------|
| `Admin → Numbers` | View/manage user numbers |
| `Admin → Broadcast` | Send messages to users |
| `Admin → Statistics` | View OTP stats |
| `Admin → Panels` | Manage SMS panels |
| `Admin → Settings` | Change theme, links, config |
| `Admin → Admins` | Manage admin permissions |

### Super Admin-Only

| Command | Purpose |
|---------|---------|
| `Admin → Child Bots` | Create & manage child instances |
| `Admin → Users` | List all users & metrics |
| `Admin → OTP Tools` | Clear store, export data |
| `Change Token` | Update bot token |

---

## 🔧 Troubleshooting

### Issue: No OTPs Received

**Check:**
1. Panel is logged in: `Admin → Panels → [Panel Name]` (should show 🟢)
2. Test panel: Click 🔄 icon next to panel
3. Check user is assigned a number: `Admin → Numbers`

**Fix:**
- Re-login panel: `Admin → Panels → [Name] → ✏️ Edit → Login`
- Check SMS panel credentials are correct
- Verify panel connectivity with `Admin → Fetch SMS`

### Issue: OTP Message Format is Wrong

**Check:**
1. Current theme: `Admin → Settings → OTP GUI`
2. Theme might have typo/format issue

**Fix:**
- Try another theme: Theme #1 (TempNum Classic) is most reliable
- Reload: Type `/admin` and navigate again
- Check logs: `tail -f bot.log`

### Issue: Bot Doesn't Respond

**Check:**
1. Bot token is correct in config.json
2. Bot has been started: `@BotFather → [Your Bot] → Check` (bot should be active)
3. Network/internet connection

**Fix:**
```bash
# Verify bot is running
ps aux | grep bot.py

# Check logs
cat bot.log | tail -50

# Restart bot
python bot.py
```

### Issue: "Permission Denied" in Admin Panel

Your user ID is not in `INITIAL_ADMIN_IDS` in config.json.

**Fix:**
1. Get your user ID: Message bot with `/start` → will show in logs
2. Add to `config.json`: `"INITIAL_ADMIN_IDS": [YOUR_ID, ...]`
3. Restart bot

---

## 📞 Support

- **Developer:** [@NONEXPERTCODER](https://t.me/NONEXPERTCODER)
- **Owner:** [@ownersigma](https://t.me/ownersigma)
- **Channel:** [@crackotp](https://t.me/crackotp)
- **Group:** [@crackotpgroup](https://t.me/crackotpgroup)

---

## 📄 License & Attribution

Crack SMS v21 — Professional Telegram OTP Bot  
© 2024 — All rights reserved

Built with ❤️ for the security & SMS verification community.

---

## 🎯 Future Roadmap

- [ ] Webhook API for enterprise integrations
- [ ] SMS forwarding via Telegram media
- [ ] Advanced analytics dashboard
- [ ] Multi-language support
- [ ] Custom OTP GUI builder

---

**Last Updated:** April 2026  
**Current Version:** 3.1.0  
**Status:** ✅ Production Ready

### Issue 4: Bot Crashes on Startup

**Check logs:**
```bash
# Railway
railway logs

# Docker
docker logs <container-id>

# Local
python bot.py 2>&1 | tee bot.log
```

**Common causes:**
- Missing `BOT_TOKEN` env var
- Database file permissions
- Port 7891 already in use

### Issue 5: Child Bots Not Starting

**Check:**
```bash
# Verify folder structure
ls -la child_bots/

# Check logs
tail -f child_bots/bot_*/bot.log
```

**Common causes:**
- Super admin hasn't approved bot request yet
- Folder permissions issue
- Missing `registry.json`

---

## 📊 Monitoring

### View Bot Logs (Local)

```bash
tail -f bot.log
```

### View Database Stats

```bash
python -c "
import asyncio
from database import get_stats
stats = asyncio.run(get_stats())
print(stats)
"
```

### Monitor Panels

```bash
# Check active panels
python -c "
from bot import PANELS
for p in PANELS:
    print(f'{p.name}: is_logged_in={p.is_logged_in}, fail_count={p.fail_count}')
"
```

---

## 🔐 Security Best Practices

1. **Never commit secrets:**
   ```bash
   # Add to .gitignore
   config.json
   .env
   bot.log
   bot_database.db
   wa_bridge_state.json
   ```

2. **Use environment variables** for sensitive data:
   ```bash
   export BOT_TOKEN="your_token"
   export WA_OTP_SECRET="your_secret"
   ```

3. **Rotate admin IDs** periodically — remove old admins:
   ```python
   INITIAL_ADMIN_IDS = [new_admin_id_1, new_admin_id_2]
   ```

4. **Set strong database password** if using PostgreSQL on Railway

5. **Enable 2-step verification** on your Telegram account

---

## 📞 Support

- **Issues / Bugs:** Create GitHub issue
- **Questions:** Contact @NONEXPERTCODER or @ownersigma on Telegram
- **Join Community:** [CrackOTP Group](https://t.me/crackotpgroup)
- **Documentation:** [Full Docs](https://t.me/crackotp)

---

## 📄 License

Proprietary — Crack SMS v20 Professional Edition

---

## 🎯 Roadmap

- [ ] Web dashboard for analytics
- [ ] SMS panel auto-discovery
- [ ] Machine learning for OTP extraction
- [ ] Multi-language support
- [ ] REST API with API keys
- [ ] Slack integration

---

**Last Updated:** April 7, 2026  
**Version:** 20.0.0 (Professional Edition)  
**Maintainer:** @NONEXPERTCODER

