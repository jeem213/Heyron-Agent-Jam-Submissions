# Heyron Memory Kit

Portable memory skills for Heyron containers. Drop-in ready!

## What It Does

Gives your Heyron agent memory capabilities:
- **Study** - Load all memories at conversation start
- **Remember** - Save conversations to memory + GitHub
- **Recall** - Search memories instantly
- **Mega Sync** - Complete system health check + sync

## How to Install

1. Copy this folder to your Heyron container:
   ```bash
   cp -r heyron-memory-kit/skills ~/workspace/skills/
   ```

2. Copy config if needed:
   ```bash
   cp heyron-memory-kit/config/memory.yaml ~/workspace/config/
   ```

3. Start using!
   - Say "study" to load memories
   - Say "remember" to save
   - Say "recall [query]" to search

## Example

```
You: study
→ Loads all memories, preferences, context

You: remember  
→ Saves conversation to memory + GitHub

You: recall Jeem's birthday
→ Finds: April 20!
```

## Requirements

- Heyron container
- GitHub account (for backups)
- Filesystem access

## License

MIT - See LICENSE file