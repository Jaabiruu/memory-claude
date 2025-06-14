# CLAUDE.md - Memory Bank Workflow Framework Instructions

## Copy this content to your project's CLAUDE.md file (after running `claude init`)

This file provides Claude Code with a comprehensive workflow system based on cursor-memory-bank's methodology, adapted for CLI usage with native Claude Code capabilities.

## Core Workflow Philosophy

**Cognitive Specialization Over Simplification**
- Maintain 6 specialized workflow modes for optimal cognitive performance
- Each mode optimizes for different thinking patterns and development phases
- Seamless CLI integration with context window management
- Think tool strategic integration for complex reasoning

**Fractal Workflow Architecture**
- Apply full 6-mode workflow to complex subtasks when beneficial
- Create tight feedback loops between project-level and subtask-level work
- Enable cognitive specialization at multiple levels of granularity
- Improve quality through iterative refinement at both levels

## Memory Bank Initialization (REQUIRED BEFORE WORKFLOW)

### Pre-Workflow Requirements (BLOCKING)
- **Memory bank MUST be initialized before starting any workflow**
- **All workflow commands depend on proper file structure**
- **Directory structure must exist before mode execution**
- **Core files must be initialized before task tracking**

### Initialization Method (RECOMMENDED)

#### Use the Initialization Script
```bash
# Run the initialization script
./init-memory-bank.sh [project-directory]

# Or for current directory
./init-memory-bank.sh
```

The script will:
- Create complete memory-bank directory structure
- Initialize all core files with proper headers
- Set up knowledge base files
- Create curation system files
- Validate the installation
- Provide next steps

### Initialization Validation (MANDATORY)
The script automatically validates, but verify:
- [ ] memory-bank/ directory exists
- [ ] All subdirectories created (workflow-modes, session-snapshots, knowledge-base, active-session, core-files)
- [ ] All core files exist and are writable
- [ ] All knowledge-base files initialized
- [ ] Curation system files present
- [ ] CLAUDE.md file is in place
- [ ] ONLY proceed with workflow when ALL validated

### Workflow Startup Sequence
```bash
# Recommended workflow startup sequence:
1. claude init  # Create CLAUDE.md
2. ./init-memory-bank.sh [project-dir]  # Initialize memory bank
3. cat memory-claude/memory-bank/CLAUDE.md >> CLAUDE.md  # Add framework instructions
4. claude -c (for conversation continuity)
5. Begin with #@VAN mode
```

## [Continue with all the workflow instructions from the current CLAUDE.md...]

*Note: Copy the remaining content from the main CLAUDE.md file in your working directory to complete this file.*