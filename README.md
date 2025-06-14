# Claude Code Memory Bank Workflow Framework

A comprehensive workflow system for Claude Code that provides cognitive specialization, intelligent memory management, and structured development processes. Based on cursor-memory-bank methodology, adapted for CLI usage with native Claude Code capabilities.

## 🎯 Quick Start

1. **Clone the memory bank framework**
   ```bash
   git clone https://github.com/Jaabiruu/memory-claude.git
   ```

2. **Navigate to your project and initialize**
   ```bash
   cd your-project
   claude init  # Creates CLAUDE.md (REQUIRED FIRST)
   /path/to/memory-claude/init-memory-bank.sh  # Creates memory-bank structure
   ```

   **Note**: The init script needs CLAUDE.md to exist first, so `claude init` must run before the memory bank initialization.

3. **Start Claude Code with continuity**
   ```bash
   claude -c
   ```

4. **Begin workflow**
   ```
   #@VAN
   ```

## 🏗️ What This Framework Provides

### 6-Mode Cognitive Specialization
- **@VAN**: Systems thinking, complexity assessment, project analysis
- **@PLAN**: Strategic planning, implementation roadmap, resource allocation
- **@CREATIVE**: Divergent thinking, design exploration, architectural decisions
- **@IMPLEMENT**: Convergent execution, code development, feature implementation
- **@REFLECT**: Critical analysis, quality assessment, testing validation
- **@ARCHIVE**: Pattern recognition, knowledge consolidation, documentation

### Intelligent Memory Management
- **Automatic Context Monitoring**: Enforced thresholds at 50%, 60%, 70% context usage
- **Smart Curation**: Quality-based filtering of knowledge with 5-criteria scoring
- **Session Continuity**: Seamless workflow resumption across CLI sessions
- **Knowledge Accumulation**: Persistent learning across projects

### Fractal Workflow Architecture
- Apply full workflow to complex subtasks
- Tight feedback loops between project and subtask levels
- Scalable complexity handling

## 📁 File Structure

After initialization, your project will have:

```
your-project/
├── CLAUDE.md                     # Framework instructions
├── init-memory-bank.sh          # Initialization script
├── validate-memory-bank.sh      # Validation script
└── memory-bank/
    ├── core-files/
    │   ├── tasks.md              # SACRED - Single source of truth
    │   ├── activeContext.md      # Current focus and context
    │   ├── progress.md           # Progress tracking
    │   └── complexity.md         # Complexity assessment
    ├── knowledge-base/
    │   ├── patterns-learned.md   # Development patterns
    │   ├── decisions-made.md     # Architectural decisions
    │   ├── solutions-found.md    # Technical solutions
    │   ├── code-snippets.md      # Reusable code
    │   └── testing-approaches.md # Testing strategies
    ├── active-session/
    │   ├── current-focus.md      # Current work focus
    │   ├── continuation-prompt.md # Resumption instructions
    │   ├── workflow-state.md     # Current workflow state
    │   └── next-steps.md         # Immediate next steps
    ├── session-snapshots/        # Context preservation
    ├── workflow-modes/           # Mode-specific files
    ├── evaluation-engine.md      # Curation system
    ├── quality-thresholds.md     # Quality standards
    ├── curation-log.md          # Curation decisions
    └── curation-queue.md        # Manual review queue
```

## 🚀 Workflow Usage

### Basic Workflow Commands
```bash
#@VAN        # Enter VAN mode (required first step)
#@PLAN       # Enter PLAN mode
#@CREATIVE   # Enter CREATIVE mode
#@IMPLEMENT  # Enter IMPLEMENT mode
#@REFLECT    # Enter REFLECT mode
#@ARCHIVE    # Enter ARCHIVE mode
```

### Context Management
```bash
#context-status              # Check current context usage
#preserve-now                # Force immediate preservation
#compact-safe                # Preserve and execute /compact
#resume-from [snapshot]      # Resume from specific snapshot
```

### Knowledge Management
```bash
#recall [topic]              # Search knowledge base
#patterns                    # List discovered patterns
#decisions                   # Review architectural decisions
#solutions [problem]         # Find similar solutions
```

### Curation System
```bash
#evaluate-session            # Evaluate current discoveries
#evaluate-item [item]        # Evaluate specific item
#curation-status             # Show curation queue
#review-queue                # Show manual review items
```

### Fractal Workflows
```bash
#@SUBTASK-VAN [task]         # Apply VAN mode to subtask
#@FRACTAL-WORKFLOW [task]    # Full workflow for complex subtask
#feedback-loop               # Integrate subtask results
```

## 📊 Complexity-Based Routing

The framework automatically routes based on project complexity:

- **Level 1 (Simple)**: @VAN → @IMPLEMENT → @REFLECT
- **Level 2 (Moderate)**: @VAN → @PLAN → @IMPLEMENT → @REFLECT
- **Level 3 (Complex)**: @VAN → @PLAN → @CREATIVE → @IMPLEMENT → @REFLECT → @ARCHIVE
- **Level 4 (Enterprise)**: Full 6-mode with iterations and validation

## 🔄 Context Preservation

**Automatic enforcement** at context thresholds:

- **50% Context**: MUST create session snapshot
- **60% Context**: MUST evaluate discoveries
- **70% Context**: MANDATORY preservation and /compact

### Context Preservation Protocol
1. Run `#context-status`
2. If >50%: STOP work immediately
3. Run `#evaluate-session`
4. Create session snapshot
5. Execute `/compact`
6. Resume with `#resume-from [snapshot]`

## 🧠 Intelligent Curation

The framework includes a 5-criteria evaluation system:

- **Novelty**: How new/unique is this information?
- **Reusability**: Can this be applied to other projects?
- **Impact**: How significant is this discovery?
- **Generalizability**: Does this apply beyond current context?
- **Validation**: Is this proven/tested?

**Mandatory curation points**:
- End of each mode
- Before context preservation
- After major decisions

## 🔧 Installation & Setup

### Prerequisites
- Claude Code CLI installed
- WSL/Linux environment (for scripts)
- Git (for version control)

### Setup Steps

1. **Clone the framework**:
   ```bash
   git clone https://github.com/Jaabiruu/memory-claude.git
   ```

2. **Navigate to your project**:
   ```bash
   cd your-project
   ```

3. **Initialize Claude Code and memory bank**:
   ```bash
   claude init
   ../memory-claude/init-memory-bank.sh
   ```

4. **Validate setup**:
   ```bash
   ../memory-claude/validate-memory-bank.sh
   ```

5. **Start Claude Code**:
   ```bash
   claude -c
   ```

## 🎯 Usage Examples

### Starting a New Project
```bash
# 1. Initialize
cd my-new-project
claude init
../memory-claude/init-memory-bank.sh

# 2. Start Claude
claude -c

# 3. Begin workflow
#@VAN
```

### Resuming Work
```bash
# 1. Validate structure
../memory-claude/validate-memory-bank.sh

# 2. Start Claude with continuity
claude -c

# 3. Check current state
#context-status
#recall current-project
```

### Complex Feature Development
```bash
# 1. Start with analysis
#@VAN

# 2. Plan implementation
#@PLAN

# 3. Explore design options
#@CREATIVE

# 4. Implement with quality
#@IMPLEMENT

# 5. Validate and improve
#@REFLECT

# 6. Document learnings
#@ARCHIVE
```

## 🚫 Critical Rules

### Sacred Principles
- **tasks.md is SACRED** - Single source of truth, never optional
- **Never skip @VAN mode** - Required initialization for all workflows
- **Complete mode transitions** - Must meet exit criteria before proceeding
- **Preserve context automatically** - Never lose progress to context limits

### File Usage Rules
- **NEVER create new .md files in memory-bank/ root**
- **ALWAYS use existing file structure**
- **ALWAYS append to existing files rather than creating new ones**
- **Project documentation goes in project directory, NOT memory-bank**

## 🤔 Troubleshooting

### Common Issues

**"Workflow commands not working"**
- Run `../memory-claude/validate-memory-bank.sh` to check structure
- Ensure memory-bank directory exists with all subdirectories

**"Mode checklist items failing"**
- Verify required files exist in knowledge-base/
- Check that core-files/ directory is properly initialized

**"Context preservation failing"**
- Ensure session-snapshots/ directory exists
- Check write permissions on memory-bank files

**"Curation system not responding"**
- Verify evaluation-engine.md and quality-thresholds.md exist
- Run `#curation-status` to check system state

### Validation
```bash
# Check complete structure
../memory-claude/validate-memory-bank.sh

# Verify individual components
ls -la memory-bank/
ls -la memory-bank/core-files/
ls -la memory-bank/knowledge-base/
```

## 🛠️ Customization

### Adjusting Quality Thresholds
Edit `memory-bank/quality-thresholds.md` to modify curation criteria:
```markdown
## Category Thresholds (0-100 scale)
- Patterns: 75
- Solutions: 70
- Decisions: 80
- Code: 65
- Testing: 70
```

### Project-Specific Workflows
For specialized domains, you can:
1. Modify complexity routing in CLAUDE.md
2. Adjust mode-specific requirements
3. Customize Think Tool integration points

## 📈 Benefits

- **Cognitive Optimization**: Each mode leverages different thinking patterns
- **Context Efficiency**: Intelligent context management prevents interruption
- **Knowledge Accumulation**: Continuous learning across projects
- **Quality Assurance**: Built-in validation and curation
- **Session Continuity**: Seamless workflow resumption
- **Scalable Complexity**: Handle simple to enterprise-level projects

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with `./validate-memory-bank.sh`
5. Submit a pull request

## 📄 License

MIT License - feel free to use and modify for your projects.

## 🆘 Support

- Create an issue for bugs or feature requests
- Check troubleshooting section for common problems
- Review CLAUDE.md for detailed workflow instructions

---

**Ready to supercharge your Claude Code workflow? Start with `./init-memory-bank.sh` and begin your journey with `#@VAN`!**
