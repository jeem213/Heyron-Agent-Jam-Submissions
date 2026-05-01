# Heyron Memory System

A comprehensive AI agent memory system built for the Heyron Agent Jam competition. This system provides persistent, structured memory management with priority tagging and cross-referencing.

## 📚 Core Skills (3 Skills)

### 1. Study (Load Memories)
Loads and analyzes memory files with priority filtering.

**Trigger Words:** `study`, `refresh memory`, `catch me up`, `what's new`

**Features:**
- Loads all memory files from last 7 days
- Priority filtering (#important vs #routine)
- Cross-reference detection
- Preferences from USER.md and SOUL.md

**Version:** 2.2 (May 1, 2026)

---

### 2. Sync (Save Memories)
Saves conversations to memory with mandatory tagging.

**Trigger Words:** `sync`, `sync now`

**Features:**
- Mandatory priority tags (#important or #routine)
- Cross-reference checking
- Auto-suggest additional tags
- GitHub backup integration

**Version:** 1.2 (May 1, 2026)

---

### 3. Mega Sync (Health Check)
Complete system health check with statistics.

**Trigger Words:** `mega sync`, `system check`, `check everything`

**Features:**
- OpenClaw status check
- Memory file verification
- GitHub sync status
- Tag statistics (#important vs #routine counts)

**Version:** 1.3 (May 1, 2026)

---

## 🧠 Memory Rules (14 Total)

### Core Rules (7)
1. **Stop Button** - Freeze on "stop", "wait", "ABORT"
2. **Money Check** - Confirm before financial actions
3. **Privacy** - Don't store passwords/credentials
4. **Persona Stay** - Always be Stuart (capybara)
5. **Uncertainty** - Admit when you don't know
6. **Time First** - Calculate Regina time (UTC-6)
7. **Escalate** - Ask before doing if something feels wrong

### Operational Rules
- **ABORT Trigger** - Emergency stop
- **Rate Limits** - Max 3/min Discord/Telegram
- **Error Handling** - Retry strategies
- **Double-Check** - Verify important decisions with user

### Memory-Specific Rules (NEW!)
- **Pre-Response Check** - Search memory before answering questions about past conversations
- **Priority Tags** - Always tag entries #important or #routine
- **Cross-Reference Links** - Link related topics

---

## 📁 File Structure

```
/
├── skills/
│   ├── study/          # Load memories (v2.2)
│   ├── sync/           # Save memories (v1.2)
│   └── mega-sync/      # Health check (v1.3)
├── memory/
│   ├── 2026-04-29.md  # Daily entries
│   └── 2026-04-30.md
├── config/
│   └── memory.yaml     # Configuration
├── README.md           # This file
└── templates/
    └── memory-entry.md # Template for entries
```

---

## 🏆 Competition-Ready Features

- **Persistent Memory** - Survives restarts via local files + GitHub
- **Priority System** - #important vs #routine for quick filtering
- **Cross-References** - Links related topics for knowledge graph
- **Auto-Sync** - Automatic GitHub backup on every session
- **Health Monitoring** - Mega Sync reports system status

---

## 🚀 Usage

### Load Memories
```
User: "study"
Stuart: Loads all recent memories, presents summary
```

### Save Session
```
User: "sync #team"
Stuart: Saves with #team tag, checks for cross-refs, pushes to GitHub
```

### System Check
```
User: "mega sync"
Stuart: Full status report with tag statistics
```

---

## 📝 Tag System

| Tag | When to Use |
|-----|-------------|
| #important | Key decisions, tasks, milestones |
| #routine | Regular check-ins, casual chat |
| #decision | Explicit decisions (also #important) |
| #task | Follow-up tasks (also #important) |

---

## 🔧 Configuration

Memory files stored in: `memory/YYYY-MM-DD.md`

GitHub sync: Automatic on every sync

---

## 📜 License

Proprietary - Heyron Agent Jam Submission

---

*Last Updated: May 1, 2026*
*Version: 1.0*
