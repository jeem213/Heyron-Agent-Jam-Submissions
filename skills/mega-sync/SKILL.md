---
name: mega-sync
description: Complete system health check - GitHub sync, memory verification, OpenClaw status. Use when you need a comprehensive status check - says "mega sync".
license: Proprietary
metadata:
  author: Jeem & Stuart
  version: "1.3"
  triggers:
    - mega sync
    - system check
    - check everything
    - full system
    - status
  category: system
---

# Mega Sync - Complete System Health Check

This skill performs a complete system health check. It verifies OpenClaw is running, checks memory files, and syncs with GitHub.

## When to Use This Skill

Triggered when the user says:
- "mega sync"
- "system check"
- "check everything"
- "full system"
- "status"

---

## The Mega Sync Process (5 Steps)

### Step 1: CHECK GITHUB STATUS

```bash
cd ~/workspace && git fetch origin && git status -sb
```

Report:
- Ahead/behind status
- Pending commits count

### Step 2: VERIFY MEMORY FILES

Check memory directory:
```bash
ls -la memory/*.md | tail -10
```

Report:
- Number of memory files
- Last updated file

### Step 2.5: TAG STATISTICS

Count priority tags across all memory files:
```bash
echo "Important entries:" && grep -c "#important\|#decision" memory/*.md
echo "Routine entries:" && grep -c "#routine" memory/*.md
```

Report:
- #important / #decision count
- #routine count

### Step 3: CHECK OPENS CLAW STATUS

Run session_status or check gateway:
```bash
openclaw status
```

Report:
- Model in use
- Gateway status
- Context usage

### Step 4: PULL + PUSH

Sync with GitHub:
```bash
git pull origin main --rebase
git push origin main
```

Handle any divergence with force push if needed.

### Step 5: REPORT STATUS

Present unified report:

| System | Status | Details |
|--------|--------|---------|
| OpenClaw | ✅ Running | Model: MiniMax M2.5 |
| Memory | ✅ X files | Last: YYYY-MM-DD |
| GitHub | ✅ Synced | X commits |

---

## Memory Rules (Applied)

This skill follows the Memory Rules from SOUL.md:
1. **Priority Tags** - Reports #important vs #routine counts
2. **Cross-Reference Links** - Notes related entries
3. **Pre-Response Check** - Verified before responding

---

## Error Handling

| Scenario | What to Do |
|----------|-------------|
| GitHub push fails | Retry with force push |
| Memory files missing | Note warning, continue |
| OpenClaw not responding | Show what we can verify |

---

## Time Estimate

| Step | Time |
|------|------|
| Check GitHub | 5s |
| Verify Memory | 5s |
| Check OpenClaw | 10s |
| Pull + Push | 15s |
| Report | 5s |
| **Total** | **~40s** |

---

*Skill version: 1.3 - Last updated: May 1, 2026*
*Note: Added tag statistics reporting*
