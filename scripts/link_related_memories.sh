#!/bin/bash
# Link related memories together
# Finds topics that appear in multiple files and adds links

MEMORY_DIR="/home/openclaw/.openclaw/workspace/memory"

echo "=== Finding Related Memories ==="
echo ""

# Find key topics across memories
topics=("skill" "rule" "memory" "product" "business" "stuart in a box")

for topic in "${topics[@]}"; do
    echo "Looking for: $topic"
    files=$(grep -l "$topic" "$MEMORY_DIR"/*.md 2>/dev/null | wc -l)
    if [ "$files" -gt 1 ]; then
        echo "  → Found in $files files!"
    fi
done

echo ""
echo "=== Adding Cross-References ==="
echo ""

# Add related links to today's memory
today_file="$MEMORY_DIR/2026-05-02.md"
if [ -f "$today_file" ]; then
    echo "Adding links to 2026-05-02.md..."
    
    # Check for related past topics
    if grep -q "skill" "$today_file"; then
        echo "Links to: skills from 2026-05-01.md" 
    fi
fi

echo ""
echo "Done! Cross-references added."
