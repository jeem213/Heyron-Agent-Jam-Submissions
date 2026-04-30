---
name: sync
description: Save conversations to memory with REQUIRED tags. Use when you want to save a session - says "sync".
license: Proprietary
metadata:
  author: Jeem & Stuart
  version: "1.0"
  triggers:
    - sync
    - sync now
  category: memory
---

# Sync - Save to Memory with Tags

**⚠️ CRITICAL: TAGS ARE REQUIRED!**

This skill saves sessions to memory files with mandatory tagging. Every save MUST include a tag.

---

## When to Use This Skill

Triggered when the user says:
- "sync"
- "sync #tagname"
- "sync now"

---

## The Sync Process (6 Steps)

### Step 1: PARSE TAGS (REQUIRED!)

**⚠️ THIS IS MANDATORY - DO NOT SKIP!**

1. Extract tag from user input
2. If NO tag provided, use `#session` as DEFAULT
3. If tag provided without #, add # prefix

**Examples:**
| Input | Tag Used |
|-------|----------|
| `sync #knicks` | `#knicks` |
| `sync #team` | `#team` |
| `sync` | `#session` (DEFAULT) |

### Step 2: CREATE MEMORY FILE

Create file with today's date:
```bash
memory/YYYY-MM-DD.md
```

### Step 3: ADD SESSION CONTENT

Add to file:
- **What** - What happened
- **Decisions** - Key decisions made
- **Topics** - Topics discussed
- **Tasks** - Open todos
- **Notes** - Additional notes
- **Tags** - The tag from Step 1

### Step 4: GIT PULL

Before pushing, pull latest:
```bash
cd ~/workspace && git pull --rebase
```

### Step 5: GIT PUSH

Push to GitHub:
```bash
git add memory/ YYYY-MM-DD.md && git commit -m "Memory: Session" && git push
```

### Step 6: CONFIRM

Report to user:
- File saved
- Tag used
- GitHub status

---

## Standard Tags

| Tag | When to Use |
|-----|-------------|
| `#session` | Default - any conversation |
| `#team` | Team collaboration |
| `#project` | Project work |
| `#decision` | Key decisions made |
| `#personal` | Personal stuff |
| `#topicname` | Any topic (make up your own!) |

**Make up your own tags!** Examples:
- `#knicks` - Knicks conversation
- `#ravens` - Ravens conversation
- `#hobbies` - Hobbies
- `#work` - Work stuff

---

## Output Format

```markdown
## 🔄 Sync Complete

**Saved:** memory/2026-04-30.md
**Tag:** #knicks
**GitHub:** ✅ Synced

Tagged with: #knicks
```

---

## Error Handling

| Scenario | What to Do |
|----------|------------|
| No tag given | Use `#session` as default |
| File exists | Append to existing file |
| Git conflict | Resolve, then push |
| Tag without # | Add # prefix |

---

## Related Skills

- `skills/study` - Load memories by tag
- `skills/mega-sync` - System health check
- `skills/recall` - Search memories

---

## Time Estimate

| Step | Time |
|------|------|
| Parse tags | 5s |
| Create file | 5s |
| Add content | 1 min |
| Git pull/push | 15s |
| Confirm | 5s |
| **Total** | **~90s** |

---

*Skill version: 1.0 - Last updated: April 30, 2026*
*Note: Tags required - uses #session as default*
