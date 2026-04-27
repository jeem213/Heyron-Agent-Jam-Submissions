#!/bin/bash
# Heyron Memory Kit - GitHub Backup Script

cd /root/.openclaw/workspace

# Pull latest first
git pull origin main --rebase

# Add memory files
git add memory/ *.md

# Commit with timestamp
git commit -m "Memory backup $(date +%Y-%m-%d\ %H:%M)"

# Push to GitHub
git push origin main

echo "Backup complete!"