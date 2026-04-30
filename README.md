# Heyron Memory Kit

Portable memory skills for Heyron containers. Drop-in ready!

## What It Does

Gives your Heyron agent memory capabilities:
- **Study** - Load all memories at conversation start, with optional tag filtering
- **Sync** - Save conversations to memory with mandatory tags
- **Mega Sync** - Complete system health check + sync

## How to Install

1. Copy this folder to your Heyron container:
   ```bash
   cp -r skills ~/workspace/skills/
   ```

2. Start using!
   - Say "study" to load all memories
   - Say "study #tagname" to load memories with specific tag
   - Say "sync #tagname" to save with a tag
   - Say "mega sync" for system health check

## Example

```
You: study
→ Loads all memories, preferences, context

You: study #f0wcus
→ Loads only memories tagged with #f0wcus

You: sync #project
→ Saves conversation with #project tag

You: mega sync
→ Checks GitHub, memory files, skills status
```

## Tag System

Use tags to organize and find memories easily:
- `sync #knicks` → Saves with #knicks tag
- `study #knicks` → Finds all #knicks memories
- `sync #team` → Saves with #team tag
- `study #team` → Finds all #team memories

## Requirements

- Heyron container
- GitHub account (for backups)
- Filesystem access

## License

MIT - See LICENSE file
