#!/bin/bash

# Memory Bank Initialization Script
# Usage: ./init-memory-bank.sh [project-directory]

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Default to current directory if no argument provided
PROJECT_DIR="${1:-.}"

echo -e "${GREEN}🏦 Initializing Memory Bank Workflow Framework${NC}"
echo "Target directory: $PROJECT_DIR"

# Create project directory if it doesn't exist
if [ ! -d "$PROJECT_DIR" ]; then
    echo -e "${YELLOW}📁 Creating project directory: $PROJECT_DIR${NC}"
    mkdir -p "$PROJECT_DIR"
fi

cd "$PROJECT_DIR"

# Check if memory-bank already exists
if [ -d "memory-bank" ]; then
    echo -e "${YELLOW}⚠️  Memory bank already exists. Checking structure...${NC}"
else
    echo -e "${GREEN}🔧 Creating memory bank directory structure...${NC}"
fi

# Create complete memory-bank structure
mkdir -p memory-bank/{workflow-modes,session-snapshots,knowledge-base,active-session,core-files}

echo -e "${GREEN}📄 Initializing core files...${NC}"

# Initialize core files with headers
cat > memory-bank/core-files/tasks.md << 'EOF'
# Tasks (SACRED - Single Source of Truth)

## Current Tasks
<!-- Add tasks here during @VAN mode -->

## Completed Tasks
<!-- Completed tasks moved here -->

## Notes
<!-- Task-related notes and dependencies -->
EOF

cat > memory-bank/core-files/activeContext.md << 'EOF'
# Active Context

## Current Focus
<!-- What we're working on right now -->

## Key Files
<!-- Important files for current work -->

## Current Mode
<!-- @VAN, @PLAN, @CREATIVE, @IMPLEMENT, @REFLECT, @ARCHIVE -->
EOF

cat > memory-bank/core-files/progress.md << 'EOF'
# Progress Tracking

## Overall Progress
<!-- High-level project progress -->

## Mode Progress
<!-- Progress within current workflow mode -->

## Milestones
<!-- Key milestones and their status -->
EOF

cat > memory-bank/core-files/complexity.md << 'EOF'
# Complexity Assessment

## Project Complexity Level
<!-- Level 1-4 based on CLAUDE.md criteria -->

## Complexity Factors
<!-- What makes this project complex -->

## Routing Decision
<!-- Which workflow path to follow -->
EOF

echo -e "${GREEN}📚 Initializing knowledge base files...${NC}"

# Initialize knowledge base files
touch memory-bank/knowledge-base/patterns-learned.md
touch memory-bank/knowledge-base/decisions-made.md
touch memory-bank/knowledge-base/solutions-found.md
touch memory-bank/knowledge-base/code-snippets.md
touch memory-bank/knowledge-base/testing-approaches.md

# Add headers to knowledge base files
echo "# Patterns Learned" > memory-bank/knowledge-base/patterns-learned.md
echo "# Decisions Made" > memory-bank/knowledge-base/decisions-made.md
echo "# Solutions Found" > memory-bank/knowledge-base/solutions-found.md
echo "# Code Snippets" > memory-bank/knowledge-base/code-snippets.md
echo "# Testing Approaches" > memory-bank/knowledge-base/testing-approaches.md

echo -e "${GREEN}🎯 Initializing active session files...${NC}"

# Initialize active session files
touch memory-bank/active-session/current-focus.md
touch memory-bank/active-session/continuation-prompt.md
touch memory-bank/active-session/workflow-state.md
touch memory-bank/active-session/next-steps.md

echo -e "${GREEN}🧠 Initializing curation system files...${NC}"

# Initialize curation system files
cat > memory-bank/evaluation-engine.md << 'EOF'
# Intelligent Curation System

## Evaluation Criteria
- Novelty: How new/unique is this information?
- Reusability: Can this be applied to other projects?
- Impact: How significant is this discovery?
- Generalizability: Does this apply beyond current context?
- Validation: Is this proven/tested?

## Current Session Discoveries
<!-- Discoveries from current session -->
EOF

cat > memory-bank/quality-thresholds.md << 'EOF'
# Quality Thresholds

## Category Thresholds (0-100 scale)
- Patterns: 75
- Solutions: 70
- Decisions: 80
- Code: 65
- Testing: 70

## Threshold Adjustments
<!-- Record threshold changes and rationale -->
EOF

touch memory-bank/curation-log.md
touch memory-bank/curation-queue.md

echo -e "${GREEN}📋 Initializing workflow mode files...${NC}"

# Initialize workflow mode files
touch memory-bank/workflow-modes/van-mode.md
touch memory-bank/workflow-modes/plan-mode.md
touch memory-bank/workflow-modes/creative-mode.md
touch memory-bank/workflow-modes/implement-mode.md
touch memory-bank/workflow-modes/reflect-mode.md
touch memory-bank/workflow-modes/archive-mode.md

# Copy CLAUDE.md if it doesn't exist
if [ ! -f "CLAUDE.md" ]; then
    echo -e "${YELLOW}📋 CLAUDE.md not found. You need to add your CLAUDE.md file.${NC}"
    echo "   Place your CLAUDE.md file in: $PROJECT_DIR/CLAUDE.md"
else
    echo -e "${GREEN}✅ CLAUDE.md found${NC}"
fi

echo -e "${GREEN}✅ Memory Bank initialization complete!${NC}"
echo ""
echo -e "${GREEN}🚀 Next steps:${NC}"
echo "1. Ensure CLAUDE.md is in place"
echo "2. Run: claude -c (for conversation continuity)"
echo "3. Start with: !@VAN mode"
echo ""
echo -e "${GREEN}📁 Structure created:${NC}"
tree memory-bank/ 2>/dev/null || find memory-bank -type f | sort

echo ""
echo -e "${GREEN}🎯 Ready to begin Memory Bank Workflow!${NC}"