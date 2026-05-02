#!/bin/bash
# Auto-summarize memories older than 7 days
# Run this script to compress old memories

MEMORY_DIR="/home/openclaw/.openclaw/workspace/memory"
DAYS_OLD=7

echo "=== Auto-Summarizing Memories ==="
echo "Looking for memories older than $DAYS_OLD days..."
echo ""

# Find old memory files
find "$MEMORY_DIR" -name "*.md" -type f -mtime +$DAYS_OLD | while read -r file; do
    filename=$(basename "$file")
    echo "Found: $filename"
    
    # Create a summary version
    summary_file="$MEMORY_DIR/.summaries/$filename.summary.md"
    mkdir -p "$MEMORY_DIR/.summaries"
    
    # Extract key decisions, tasks, and topics
    echo "# Summary: $filename" > "$summary_file"
    echo "" >> "$summary_file"
    echo "## Key Decisions" >> "$summary_file"
    grep -h "^##.*decision\|^### Decisions\|^-\|\[decision\]" "$file" 2>/dev/null | head -10 >> "$summary_file"
    echo "" >> "$summary_file"
    
    echo "## Tasks" >> "$summary_file"
    grep -h "^##.*task\|^### Tasks" "$file" 2>/dev/null | head -10 >> "$summary_file"
    echo "" >> "$summary_file"
    
    echo "## Topics" >> "$summary_file"
    grep -h "^##\|^###" "$file" 2>/dev/null | head -20 >> "$summary_file"
    
    echo "  → Created summary: $filename.summary.md"
done

echo ""
echo "=== Summarization Complete ==="
echo "Old memories are now summarized for quick recall!"
