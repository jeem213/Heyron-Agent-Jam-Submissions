# 🧠 Heyron Memory System

**The memory system that actually remembers everything.**

Built for the Heyron Agent Jam competition - a persistent, structured memory system that makes your AI agent NEVER forget.

---

## 🚀 TL;DR - What Is This?

Heyron Memory System gives your AI agent:
- ✅ **Persistent memory** - Remembers conversations across sessions
- ✅ **Smart tagging** - Organized, searchable memories
- ✅ **Auto-summarization** - Old memories get compressed automatically
- ✅ **Cross-referencing** - Memories link to each other like a web
- ✅ **GitHub backup** - Every memory is backed up
- ✅ **Zero dependencies** - Works WITHOUT external APIs

**Just 3 skills. Infinite memory.**

---

## 📚 The Core Skills (3 Skills)

### 1. 🔄 Sync - "Save This Conversation"

**Trigger Words:** `sync`, `sync now`, `remember`

Saves the current conversation to memory with MANDATORY tagging.

**What it does:**
- Creates memory file: `memory/YYYY-MM-DD.md`
- Requires tags: `#important` or `#routine`
- Auto-suggests other tags based on topics
- Backs up to GitHub automatically

**Example:**
```
You: sync
Stuart: What were the key points? I'll save this with #important tag.
```

**Version:** 1.2 (May 2, 2026)

---

### 2. 📖 Study - "What Did We Talk About?"

**Trigger Words:** `study`, `refresh memory`, `catch me up`, `what's new`

Loads all memories to get you up to speed instantly.

**What it does:**
- Reads all memory files from past 7 days
- Filters by priority (#important vs #routine)
- Finds cross-references to related topics
- Also checks MEMORY_INDEX.md for quick facts

**Example:**
```
You: study
Stuart: [Loads all recent memories...]
Found 3 important decisions:
- Decided on $147 pricing (May 1)
- Created 3 new skills (May 2)
- Added 5 new rules (May 2)
```

**Version:** 2.2 (May 2, 2026)

---

### 3. 🔥 Mega Sync - "Full System Check"

**Trigger Words:** `mega sync`, `system check`, `check everything`

Complete health check for the entire memory system.

**What it does:**
- Verifies GitHub connection
- Counts memory files
- Shows tag statistics
- Checks all skills working
- Reports system status

**Example:**
```
You: mega sync
Stuart: === MEGA SYNC ===
1️⃣ GitHub: Connected ✅
2️⃣ Memory: 37 files ✅
3️⃣ Skills: All 3 working ✅
4️⃣ Tags: #important: 23, #routine: 14 ✅
```

**Version:** 1.3 (May 2, 2026)

---

## 🏷️ The Tagging System

**Why tags?** Because searching memories is hard. Tags make it easy.

### Priority Tags (Required)

| Tag | When to Use |
|-----|-------------|
| `#important` | Key decisions, milestones, big moments |
| `#routine` | Casual chat, regular updates |

### Category Tags (Optional)

| Tag | Category |
|-----|----------|
| `#business` | Work, money, startup |
| `#personal` | Family, hobbies |
| `#technical` | Code, setup, integrations |
| `#session` | General conversation |

### Topic Tags (Optional)

| Tag | Topic |
|-----|-------|
| `#skills` | New skills created |
| `#rules` | Rules changes |
| `#product` | Stuart in a Box |

---

## ⚙️ The Automation Scripts

Three bonus scripts included:

### 1. Auto-Summarizer
**File:** `scripts/summarize_old_memories.sh`

**What it does:**
- Finds memories older than 7 days
- Creates summary versions
- Keeps key decisions + tasks
- Frees up space!

**Run:** `bash scripts/summarize_old_memories.sh`

### 2. Memory Linker
**File:** `scripts/link_related_memories.sh`

**What it does:**
- Finds topics across multiple memories
- Adds "Related to:" links
- Creates a knowledge WEB, not just a list

**Run:** `bash scripts/link_related_memories.sh`

### 3. Monthly Consolidator
**File:** `scripts/consolidate_memories.sh`

**What it does:**
- Runs on the 1st of each month
- Merges old memories into monthly summaries
- Archives old files
- Automatic via HEARTBEAT.md!

**Run:** `bash scripts/consolidate_memories.sh`

---

## 📋 Quick Reference Guides

### MEMORY_INDEX.md
One-page overview of ALL key facts:
- User preferences
- Agent rules
- Skills list
- Recent wins

**Think of it as the "Cliff Notes" for your memory.**

### MEMORY_TAGS.md
The tagging rulebook:
- When to use which tag
- Examples
- Best practices

---

## 🏆 Why This Wins (Why Judges Should Vote For Us)

| Feature | Other Systems | Our System |
|---------|--------------|-------------|
| **External APIs** | Many require paid services | ✅ Zero dependencies |
| **Searchable** | Basic keyword only | ✅ Tags + cross-references |
| **Auto-maintenance** | Manual cleanup | ✅ 3 automation scripts |
| **GitHub backup** | Often missing | ✅ Built-in |
| **Learning** | Flat memory | ✅ Structured + improving |
| **Easy to use** | Complex setup | ✅ Just 3 words: sync, study, mega-sync |

---

## 🛠️ Installation

1. Copy the `skills/` folder to your agent
2. Copy `scripts/` for automation (optional)
3. Copy `MEMORY_INDEX.md` and `MEMORY_TAGS.md` for guides
4. Say "sync" to save your first memory!

---

## 📝 Example Usage

### First Conversation
```
You: sync
Stuart: Saving this conversation to memory with #important tag!
```

### Next Day
```
You: study
Stuart: [Loads all memories...]
Last conversation: Created 3 new skills (May 2)
Key decisions: $147 pricing, skill-scout created
```

### Health Check
```
You: mega sync
Stuart: All systems go! 37 memories, 3 skills, GitHub connected.
```

---

## 🔄 Version History

| Version | Date | Changes |
|---------|------|---------|
| 1.0 | May 1, 2026 | Initial release |
| 1.2 | May 2, 2026 | Added auto-suggest tags |
| 2.0 | May 2, 2026 | Added MEMORY_INDEX + MEMORY_TAGS |
| 2.2 | May 2, 2026 | Added 3 automation scripts |

---

## 👤 Credits

Built by Jeem & Stuart for the Heyron Agent Jam Competition.

**The memory system that actually remembers. 🧠💜**

---

*Last Updated: May 2, 2026*
*Total Skills: 3 | Total Scripts: 3 | Memory Files: Template-based*
