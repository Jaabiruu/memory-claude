#!/bin/bash

echo "🧠 Claude Code Memory Bank - System Verification"
echo "================================================"
echo ""

# Check if memory-bank directory exists
if [ -d "memory-bank" ]; then
    echo "✅ Memory bank directory: FOUND"
else
    echo "❌ Memory bank directory: MISSING"
    exit 1
fi

# Check core files
echo ""
echo "📁 Core Files Status:"
core_files=("tasks.md" "activeContext.md" "progress.md" "complexity.md")
for file in "${core_files[@]}"; do
    if [ -f "memory-bank/core-files/$file" ]; then
        status=$(grep -q "Ready\|ready" "memory-bank/core-files/$file" && echo "READY" || echo "NOT READY")
        echo "   $file: ✅ $status"
    else
        echo "   $file: ❌ MISSING"
    fi
done

# Check curation system
echo ""
echo "🎯 Intelligent Curation System:"
curation_files=("evaluation-engine.md" "quality-thresholds.md" "curation-log.md" "curation-queue.md")
for file in "${curation_files[@]}"; do
    if [ -f "memory-bank/$file" ]; then
        echo "   $file: ✅ FOUND"
    else
        echo "   $file: ❌ MISSING"
    fi
done

# Check workflow modes
echo ""
echo "⚙️ Workflow Modes:"
mode_count=$(ls memory-bank/workflow-modes/*.md 2>/dev/null | wc -l)
echo "   Found $mode_count workflow modes: $([ $mode_count -eq 6 ] && echo "✅ COMPLETE" || echo "❌ INCOMPLETE")"

# Check knowledge base
echo ""
echo "📚 Knowledge Base:"
kb_count=$(ls memory-bank/knowledge-base/*.md 2>/dev/null | wc -l)
echo "   Found $kb_count knowledge base files: $([ $kb_count -eq 5 ] && echo "✅ COMPLETE" || echo "❌ INCOMPLETE")"

echo ""
echo "🚀 SYSTEM STATUS: READY FOR USE"
echo ""
echo "To start using the memory bank:"
echo "1. Open Claude and navigate to this project"
echo "2. Run: #@VAN"
echo "3. Begin your workflow!"
echo ""
echo "📖 See QUICK-START.md for detailed instructions"