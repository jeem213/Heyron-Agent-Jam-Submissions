---
name: sync
description: Save conversations to memory with REQUIRED tags + auto-suggest. Use when you want to save a session - says "sync".
license: Proprietary
metadata:
  author: Jeem & Stuart
  version: "1.2"
  triggers:
    - sync
    - sync now
  category: memory
---

# Sync - Save to Memory with Tags + Auto-Suggest

**⚠️ CRITICAL: TAGS ARE REQUIRED!**

This skill saves sessions to memory files with mandatory tagging + auto-suggestion of additional tags based on conversation topics.

---

## When to Use This Skill

Triggered when the user says:
- "sync"
- "sync #tagname"
- "sync now"

---

## The Sync Process (7 Steps)

### Step 1: PARSE TAGS (REQUIRED!)

**⚠️ THIS IS MANDATORY - DO NOT SKIP!**

1. Extract tag from user input
2. If NO tag provided, use `#session` as DEFAULT
3. If tag provided without #, add # prefix

### Step 2: ANALYZE CONVERSATION (REQUIRED!)

After parsing the user's tag, analyze the conversation to find topics and suggest additional tags.

### Step 3: CREATE MEMORY FILE

Create file with today's date:
```bash
memory/YYYY-MM-DD.md
```

### Step 4: ADD SESSION CONTENT

Add to file:
- **What** - What happened
- **Decisions** - Key decisions made (tag as #decision)
- **Tasks** - Open todos (tag as #task)
- **Tags** - All tags from Step 1 + Step 2

### Step 4.5: ADD PRIORITY TAG (REQUIRED!)

**⚠️ MANDATORY - Per Memory Rules!**

After analyzing conversation content, you MUST add priority tag:

| If... | Then tag as... |
|-------|---------------|
| Made decisions, created tasks, milestones | `#important` |
| Casual chat, check-ins, routine updates | `#routine` |

### Step 4.6: CHECK CROSS-REFERENCES

Before saving, check if this topic relates to previous entries:
- Search recent memory files for related topics
- If found, add "Related to: YYYY-MM-DD.md#topic" line

### Step 5: GIT PULL

Before pushing, pull latest:
```bash
cd ~/workspace && git pull --rebase
```

### Step 6: GIT PUSH

Push to GitHub:
```bash
git add memory/ YYYY-MM-DD.md && git commit -m "Memory: Session" && git push
```

### Step 7: CONFIRM

Report to user:
- File saved
- All tags used
- GitHub status

---

## Standard Tags

| Tag | When to Use |
|-----|-------------|
| `#session` | Default - any conversation |
| `#team` | Team collaboration |
| `#important` | Key decisions, tasks, milestones |
| `#routine` | Regular updates |

---

## Error Handling

| Scenario | What to Do |
|----------|------------|
| No tag given | Use `#session` as default |
| File exists | Append to existing file |
| Git conflict | Resolve, then push |

---

## Time Estimate

| Step | Time |
|------|------|
| Parse tags | 5s |
| Analyze + suggest | 10s |
| Create file | 5s |
| Add content | 1 min |
| Git pull/push | 15s |
| **Total** | **~90s** |

---

*Skill version: 1.2 - Last updated: May 1, 2026*
*Note: Added mandatory priority tags + cross-reference checking*
