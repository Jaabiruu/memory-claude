#!/bin/bash

# Memory Bank Validation Script
# Usage: ./validate-memory-bank.sh [project-directory]

set -e

# Colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Default to current directory if no argument provided
PROJECT_DIR="${1:-.}"

echo -e "${GREEN}🔍 Validating Memory Bank Structure${NC}"
echo "Target directory: $PROJECT_DIR"

cd "$PROJECT_DIR"

VALIDATION_FAILED=0

# Function to check if file/directory exists
check_exists() {
    local path="$1"
    local type="$2" # "file" or "directory"
    
    if [ "$type" = "directory" ]; then
        if [ -d "$path" ]; then
            echo -e "${GREEN}✅ Directory exists: $path${NC}"
        else
            echo -e "${RED}❌ Missing directory: $path${NC}"
            VALIDATION_FAILED=1
        fi
    else
        if [ -f "$path" ]; then
            echo -e "${GREEN}✅ File exists: $path${NC}"
        else
            echo -e "${RED}❌ Missing file: $path${NC}"
            VALIDATION_FAILED=1
        fi
    fi
}

echo -e "${YELLOW}📁 Checking directory structure...${NC}"
check_exists "workflow-modes" "directory"
check_exists "session-snapshots" "directory"
check_exists "knowledge-base" "directory"
check_exists "active-session" "directory"
check_exists "core-files" "directory"

echo -e "${YELLOW}📄 Checking core files...${NC}"
check_exists "core-files/tasks.md" "file"
check_exists "core-files/activeContext.md" "file"
check_exists "core-files/progress.md" "file"
check_exists "core-files/complexity.md" "file"

echo -e "${YELLOW}📚 Checking knowledge base files...${NC}"
check_exists "knowledge-base/patterns-learned.md" "file"
check_exists "knowledge-base/decisions-made.md" "file"
check_exists "knowledge-base/solutions-found.md" "file"
check_exists "knowledge-base/code-snippets.md" "file"
check_exists "knowledge-base/testing-approaches.md" "file"

echo -e "${YELLOW}🎯 Checking active session files...${NC}"
check_exists "active-session/current-focus.md" "file"
check_exists "active-session/continuation-prompt.md" "file"
check_exists "active-session/workflow-state.md" "file"
check_exists "active-session/next-steps.md" "file"

echo -e "${YELLOW}🧠 Checking curation system files...${NC}"
check_exists "evaluation-engine.md" "file"
check_exists "quality-thresholds.md" "file"
check_exists "curation-log.md" "file"
check_exists "curation-queue.md" "file"

echo -e "${YELLOW}📋 Checking workflow mode files...${NC}"
check_exists "workflow-modes/van-mode.md" "file"
check_exists "workflow-modes/plan-mode.md" "file"
check_exists "workflow-modes/creative-mode.md" "file"
check_exists "workflow-modes/implement-mode.md" "file"
check_exists "workflow-modes/reflect-mode.md" "file"
check_exists "workflow-modes/archive-mode.md" "file"

echo -e "${YELLOW}📋 Checking CLAUDE.md...${NC}"
check_exists "CLAUDE.md" "file"

echo ""
if [ $VALIDATION_FAILED -eq 0 ]; then
    echo -e "${GREEN}✅ Memory Bank validation PASSED!${NC}"
    echo -e "${GREEN}🚀 Ready to start workflow with #@VAN mode${NC}"
    exit 0
else
    echo -e "${RED}❌ Memory Bank validation FAILED!${NC}"
    echo -e "${YELLOW}🔧 Run ./init-memory-bank.sh to fix missing components${NC}"
    exit 1
fi