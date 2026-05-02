#!/bin/bash
# Monthly memory consolidation
# Merges old memories into monthly summaries
# Run on the 1st of each month

MEMORY_DIR="/home/openclaw/.openclaw/workspace/memory"
ARCHIVE_DIR="$MEMORY_DIR/.archived"
MONTH=$(date +%Y-%m)

echo "=== Monthly Memory Consolidation ==="
echo "Month: $MONTH"
echo ""

# Create archive directory
mkdir -p "$ARCHIVE_DIR"

# Find memories from last month
last_month_files=$(find "$MEMORY_DIR" -name "2026-0[1-4]-*.md" -type f 2>/dev/null)

if [ -z "$last_month_files" ]; then
    echo "No old memories to consolidate yet!"
    exit 0
fi

echo "Found files to consolidate:"
echo "$last_month_files"
echo ""

# Create monthly summary
summary_file="$MEMORY_DIR/MONTHLY_SUMMARY.md"
echo "# Monthly Memory Summary" >> "$summary_file"
echo "" >> "$summary_file"
echo "## $MONTH Consolidation" >> "$summary_file"
echo "" >> "$summary_file"

# Extract key info from each file
for file in $last_month_files; do
    filename=$(basename "$file")
    echo "### $filename" >> "$summary_file"
    
    # Get decisions
    echo "**Decisions:**" >> "$summary_file"
    grep -h "Decision\|decision" "$file" 2>/dev/null | head -3 >> "$summary_file"
    
    # Get tasks
    echo "**Tasks:**" >> "$summary_file"
    grep -h "Task\|task\|TODO" "$file" 2>/dev/null | head -3 >> "$summary_file"
    
    echo "" >> "$summary_file"
done

echo "✅ Created monthly summary!"

# Optionally archive old files
echo ""
echo "=== Files Summary ==="
total=$(ls memory/2026-*.md 2>/dev/null | wc -l)
echo "Current memories: $total files"

echo ""
echo "Done with #5!"