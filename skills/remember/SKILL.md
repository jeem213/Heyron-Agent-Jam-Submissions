---
name: remember
description: Save conversations to memory and GitHub. Use when you want to save - says "remember".
license: Proprietary
metadata:
  author: Jeem & Stuart
  version: "2.1"
  triggers:
    - remember
    - save
    - backup
  category: memory
---

# Remember - Save to Memory

One word saves the entire conversation to memory files and GitHub.

## When to Use This Skill

Triggered when the user says:
- "remember"
- "save"
- "backup"
- "save this"

---

## The Remember Process (5 Steps)

### Step 1: CREATE MEMORY FILE

Create file with date stamp:
```bash
memory/YYYY-MM-DD.md
```

### Step 2: ADD SESSION CONTENT

Add to file:
- **What** - What happened
- **Decisions** - Key decisions made
- **Topics** - Topics discussed
- **Tasks** - Open todos
- **Notes** - Additional notes
- **Tags** - Categorization

### Step 3: GIT PULL (IMPORTANT!)

Before pushing, pull latest:
```bash
git pull origin main --rebase
```

### Step 4: GIT PUSH

Commit and push:
```bash
git add memory/ *.md
git commit -m "Memory: YYYY-MM-DD summary"
git push origin main
```

### Step 5: CONFIRM

Tell user:
- What's saved
- Tags used
- GitHub commit link

---

## Output Format

```markdown
💾 Remember Complete!

- Decisions: X
- Topics: X
- Tasks: X
- Notes: X

GitHub: ✅ Synced!
```

---

## Auto-Save Triggers

This skill automatically saves after "goodbye" triggers:
- "that's all for now"
- "bye for now"
- "I'm done"
- "ttyl"
- "talk to you later"

---

## Example

**Input:** "remember"
**Output:**
```
💾 Remember Complete!

- Decisions: 3
- Topics: Website updates, Memory Kit
- Tasks: Complete submission

GitHub: ✅ Synced!
```

---

## Pro Tips

- ALWAYS pull before pushing (git pull --rebase)
- Add specific tags (#session, #topic, etc.)
- Include key decisions and tasks
- Be specific, not generic

---

## Time Estimate

| Step | Time |
|------|------|
| Create file | 2s |
| Add content | 10s |
| Git pull | 5s |
| Git push | 10s |
| Confirm | 2s |
| **Total** | **~30s** |

---

*Skill version: 2.1 - Last updated: April 27, 2026*
*Note: File-based memory + GitHub only*