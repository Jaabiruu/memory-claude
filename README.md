# Claude Code Memory Bank Workflow Framework

🚀 **Revolutionary workflow system for Claude Code with fractal workflows and intelligent context management**

## Overview

The Claude Code Memory Bank is an advanced workflow framework that brings **cognitive specialization** to your development process. It transforms the cursor-memory-bank methodology into a native Claude Code experience with enhanced features like fractal workflows and automatic context preservation.

## ✨ Key Features

### 🧠 6-Mode Cognitive Specialization
- **@VAN** - Validation & Analysis (Project breakdown and complexity assessment)
- **@PLAN** - Planning & Strategy (Implementation roadmap and resource allocation)
- **@CREATIVE** - Design & Architecture (Design exploration and architectural decisions)
- **@IMPLEMENT** - Development & Execution (Code implementation with quality practices)
- **@REFLECT** - Quality & Validation (Comprehensive quality assessment)
- **@ARCHIVE** - Knowledge & Documentation (Knowledge consolidation and documentation)

### 🔄 Fractal Workflow Enhancement
**Revolutionary feature that applies full 6-mode workflow to complex subtasks:**
- Apply cognitive specialization at multiple levels of granularity
- Create tight feedback loops between project and subtask levels
- Improve quality through iterative refinement
- Handle complex subtasks with the same rigor as full projects

### 🧠 Intelligent Context Window Management
**Never lose progress to context limitations:**
- **50%** Context Usage: Warning mode - prepare for documentation
- **60%** Context Usage: Documentation mode - create session snapshot
- **70%** Context Usage: Compaction mode - force preservation and `/compact`
- **Seamless resumption** after context clearing with full state preservation

### 📚 Continuous Knowledge Accumulation
**Learn and improve across all projects:**
- **Patterns Repository** - Development patterns and approaches
- **Solutions Database** - Problem-solution pairs for future reference
- **Decision Archive** - Architectural decisions with full rationale
- **Code Snippets** - Reusable utilities and templates

## 🚀 Quick Start

### 1. Installation
```bash
# Clone this repository
git clone https://github.com/yourusername/claude-code-memory-bank.git

# Copy files to your project directory
cp claude-code-memory-bank/CLAUDE.md /path/to/your/project/
cp -r claude-code-memory-bank/memory-bank /path/to/your/project/
```

### 2. Initialize Any Project
```bash
# Start with project analysis and complexity assessment
#@VAN
```

### 3. Use Fractal Workflows for Complex Subtasks
```bash
# Apply full workflow to complex subtasks
#@FRACTAL-WORKFLOW [task-name]

# Or apply specific modes to subtasks
#@SUBTASK-VAN [task-name]
#@SUBTASK-PLAN [task-name]
```

## 📖 Documentation

- **[QUICK-START.md](memory-bank/QUICK-START.md)** - Get started in under 2 minutes
- **[Workflow Modes](memory-bank/workflow-modes/)** - Detailed instructions for each mode
- **[Context Management](memory-bank/context-monitor.md)** - Context window management system
- **[System Status](memory-bank/SYSTEM-STATUS.md)** - Complete implementation status

## 🎯 Workflow Paths by Complexity

### Level 1 (Simple Projects)
```
@VAN → @IMPLEMENT → @REFLECT
```

### Level 2 (Moderate Projects)
```
@VAN → @PLAN → @IMPLEMENT → @REFLECT
```

### Level 3-4 (Complex Projects)
```
@VAN → @PLAN → @CREATIVE → @IMPLEMENT → @REFLECT → @ARCHIVE
```

## 🔧 Key Commands

### Core Workflow Modes
- `#@VAN` - Analyze and break down project/task
- `#@PLAN` - Create implementation strategy
- `#@CREATIVE` - Explore design alternatives
- `#@IMPLEMENT` - Code and build features
- `#@REFLECT` - Quality assessment and testing
- `#@ARCHIVE` - Document and preserve knowledge

### Fractal Workflow Commands
- `#@FRACTAL-WORKFLOW [task]` - Apply full workflow to complex subtask
- `#@SUBTASK-VAN [task]` - Apply VAN mode to specific subtask
- `#feedback-loop` - Integrate subtask results back to project level

### Context Management
- `#context-status` - Check current context usage
- `#preserve-now` - Force immediate context preservation
- `#compact-safe` - Preserve context and execute `/compact`

### Knowledge Management
- `#patterns` - View all discovered patterns
- `#decisions` - Review architectural decisions made
- `#solutions [problem]` - Find solutions to similar problems
- `#recall [topic]` - Search entire knowledge base

## 🏗️ Architecture

The system uses a file-based approach with clear separation of concerns:

```
memory-bank/
├── workflow-modes/          # Mode-specific instructions
├── core-files/             # SACRED task tracking and progress
├── knowledge-base/         # Accumulated learnings and patterns
├── active-session/         # Current session state and context
├── session-snapshots/      # Context preservation snapshots
└── context-monitor.md      # Context window management system
```

## 🎉 Why This Framework Works

### 🧠 Cognitive Specialization
Each mode optimizes for different thinking patterns:
- **Analytical thinking** in @VAN mode
- **Strategic planning** in @PLAN mode
- **Creative exploration** in @CREATIVE mode
- **Focused execution** in @IMPLEMENT mode
- **Critical assessment** in @REFLECT mode
- **Knowledge synthesis** in @ARCHIVE mode

### 🔄 Fractal Quality Enhancement
Apply the same cognitive rigor to subtasks as to full projects:
- Complex subtasks get full workflow treatment
- Early issue identification within subtasks
- Better integration between subtask and project levels
- Scalable approach that works at any complexity level

### 💾 Context Continuity
Never lose progress to context limitations:
- Automatic preservation before context limits
- Perfect resumption after `/compact` operations
- Intelligent selection of critical context
- Cross-session workflow continuity

### 📈 Continuous Improvement
Learn and improve across all projects:
- Pattern recognition and reuse
- Solution database prevents solving same problems twice
- Decision rationale helps future architectural choices
- Knowledge compounds across projects

## 🔧 Requirements

- **Claude Code** - CLI access to Claude
- **WSL Ubuntu** (optimized) or other Unix environment
- **Git** for version control (optional but recommended)

## 📄 License

MIT License - See [LICENSE](LICENSE) for details

## 🤝 Contributing

Contributions welcome! Please read [CONTRIBUTING.md](docs/CONTRIBUTING.md) for guidelines.

## 📞 Support

- **Documentation**: Check the `memory-bank/` directory for comprehensive guides
- **Issues**: Report bugs and feature requests via GitHub issues
- **Discussions**: Share your workflow experiences and improvements

---

**🎯 Start your next project with `#@VAN` and experience the enhanced workflow system!**