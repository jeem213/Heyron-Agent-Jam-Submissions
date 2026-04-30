---
name: study
description: Load all memories, with optional tag filtering. Use when you need to catch up - says "study".
license: Proprietary
metadata:
  author: Jeem & Stuart
  version: "2.1"
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
- Extract key decisions
- Extract tasks
- Extract topics
- Extract personal notes

### Step 3: LOAD PREFERENCES

Read:
- `USER.md` - Human preferences
- `SOUL.md` - Your persona
- Any context files

### Step 4: PRESENT SUMMARY

Give Jeem a quick summary:
- Key decisions
- Open tasks
- What's been happening
- Any urgent items

### Step 5: GIT PULL (Auto)

Keep synced:
```bash
git pull origin main --rebase
```

---

## Output Format

```markdown
## 📚 Study Complete!

### Recent Decisions
- [Decision 1]
- [Decision 2]

### Open Tasks
- [ ] Task 1
- [ ] Task 2

### What's New
- Topic 1
- Topic 2

### Context Loaded
- USER.md ✅
- SOUL.md ✅

Ready to help! 🦫
```

---

## Error Handling

| Scenario | What to Do |
|----------|-------------|
| No memory files | Start fresh, welcome Jeem |
| Files unreadable | Note warning, continue |
| Git pull fails | Note offline, continue |

---

## Related Skills

- `skills/remember` - Save new sessions
- `skills/recall` - Search specific memories
- `skills/mega-sync` - Full system check

---

## Examples

### Example 1

**Input:** "study"
**Output:** Full context with recent decisions, tasks, and topics

### Example 2

**Input:** "catch me up"
**Output:** Summary of what happened in recent sessions

---

## Pro Tips

- Focus on last 7 days for recent context
- Always load USER.md and SOUL.md for personalization
- Present tasks that are still open
- Note any time-sensitive items

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

*Skill version: 2.0 - Last updated: April 27, 2026*
*Note: File-based memory only*