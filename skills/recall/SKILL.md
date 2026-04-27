---
name: recall
description: Search and retrieve information from memory. Use when you want to find something - says "recall".
license: MIT
metadata:
  author: Jeem & Stuart
  version: "1.2"
  triggers:
    - recall
    - search memory
    - find
  category: memory
---

# Recall - Search Memories

Search your entire memory instantly.

## Steps

1. **Accept query** - What to search for
2. **Search memory files** - Use grep or search
3. **Retrieve results** - Find relevant info
4. **Present findings** - Show what was found

## Examples

### Example 1

**Input:** "recall Jeem's birthday"
**Output:** Found: April 20!

### Example 2

**Input:** "search memory for Agent Jam"
**Output:** Found in memory/2026-04-26.md: Competition entry, $250 prize, deadline May 2

### Example 3

**Input:** "find preferences about voice"
**Output:** Found: Jeem=Will, Sara=Davis

---

## Notes

- Use grep for fast searching: `grep -r "query" memory/`
- Check both file names and content
- Present results with source file and line