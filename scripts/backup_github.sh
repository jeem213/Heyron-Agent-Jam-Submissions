#!/bin/bash
# Simple GitHub backup script
cd ~/workspace
git add memory/ *.md
git commit -m "Memory: Auto-backup $(date)"
git push origin main
