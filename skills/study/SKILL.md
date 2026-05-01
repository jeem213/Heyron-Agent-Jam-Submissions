---
name: study
description: Load all memories with optional tag filtering. Use when you need to catch up - says "study".
license: Proprietary
metadata:
  author: Jeem & Stuart
  version: "2.2"
  triggers:
    - study
    - refresh memory
    - catch me up
    - what's new
  category: memory
---

# Study - Load Memories

One word reads all memory files and gets you up to speed instantly.

**Optional:** Add a tag to filter memories: `study #knicks`

## When to Use This Skill

Triggered when the user says:
- "study"
- "study #tagname"
- "refresh memory"
- "catch me up"
- "what's new"

---

## The Study Process (6 Steps)

### Step 0: PARSE TAG (If Provided)

**If user says `study #tagname`:**
1. Extract the tag (including # prefix)
2. Use memory_search to find files with that tag
3. Filter to only those files

**If user says just `study`:**
1. No tag filter - load ALL memories
2. Continue with normal process

### Step 1: LIST MEMORY FILES

```bash
ls -la memory/*.md | tail -10
```

Shows recent sessions.

### Step 2: READ RECENT FILES (7 days)

Read memory files from last 7 days:
- Extract key decisions (priority: #important, #decision)
- Extract tasks (priority: #task)
- Extract topics
- Extract personal notes
- Check for cross-references ("Related to:")

### Step 2.5: PRIORITY FILTER (If Requested)

**If user says `study #important`:**
- Filter to show ONLY #important and #decision entries
- Skip #routine entries

### Step 3: LOAD PREFERENCES

Read:
- `USER.md` - Human preferences
- `SOUL.md` - Your persona

### Step 4: PRESENT SUMMARY

Give Jeem a quick summary:
- Key decisions (#important)
- Open tasks
- What's been happening

### Step 5: GIT PULL (Auto)

Keep synced:
```bash
git pull origin main --rebase
```

---

## Memory Rules (Applied)

This skill follows the Memory Rules from SOUL.md:
1. **Pre-Response Check** - Always check memory before answering past conversation questions
2. **Priority Tags** - Shows #important entries first
3. **Cross-Reference Links** - Notes related topics

---

## Error Handling

| Scenario | What to Do |
|----------|------------|
| No memory files | Start fresh, welcome Jeem |
| Files unreadable | Note warning, continue |
| Git pull fails | Note offline, continue |

---

## Time Estimate

| Step | Time |
|------|------|
| List files | 2s |
| Read recent | 10s |
| Load prefs | 5s |
| Present | 10s |
| Git pull | 5s |
| **Total** | **~30s** |

---

*Skill version: 2.2 - Last updated: May 1, 2026*
*Note: Enhanced with priority filtering and cross-reference detection*
