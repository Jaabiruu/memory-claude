# CLAUDE.md - Memory Bank Workflow Framework

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

## Workflow Modes Overview

### Sequential Workflow Progression
```
@VAN → @PLAN → @CREATIVE → @IMPLEMENT → @REFLECT → @ARCHIVE
```

**Mode Specializations:**
- **@VAN**: Systems thinking, complexity assessment, project analysis
- **@PLAN**: Strategic planning, implementation roadmap, resource allocation
- **@CREATIVE**: Divergent thinking, design exploration, architectural decisions
- **@IMPLEMENT**: Convergent execution, code development, feature implementation
- **@REFLECT**: Critical analysis, quality assessment, testing validation
- **@ARCHIVE**: Pattern recognition, knowledge consolidation, documentation

## Memory Bank File Structure

**Required Directory Structure:**
```
memory-bank/
├── workflow-modes/
│   ├── van-mode.md
│   ├── plan-mode.md
│   ├── creative-mode.md
│   ├── implement-mode.md
│   ├── reflect-mode.md
│   └── archive-mode.md
├── session-snapshots/
│   ├── snapshot-[timestamp].md
│   ├── progress-[timestamp].md
│   └── context-[timestamp].md
├── knowledge-base/
│   ├── patterns-learned.md
│   ├── decisions-made.md
│   ├── solutions-found.md
│   ├── code-snippets.md
│   └── testing-approaches.md
├── active-session/
│   ├── current-focus.md
│   ├── continuation-prompt.md
│   ├── workflow-state.md
│   └── next-steps.md
├── core-files/
│   ├── tasks.md (SACRED - Single source of truth)
│   ├── activeContext.md
│   ├── progress.md
│   └── complexity.md
├── evaluation-engine.md (Intelligent curation system)
├── quality-thresholds.md (Configurable quality standards)
├── curation-log.md (Decision tracking and learning)
└── curation-queue.md (Manual review queue management)
```

## Context Window Management

### Automatic Context Monitoring
- **50% Context Usage**: Warning mode - prepare for documentation
- **60% Context Usage**: Documentation mode - create session snapshot
- **70% Context Usage**: Compaction mode - force preservation and /compact

### Context Preservation Protocol
When context threshold is reached:

1. **Document Current State**
   - Create session snapshot with timestamp
   - Document current mode and workflow position
   - Record immediate next steps and priorities
   - Note files being worked on and pending decisions

2. **Extract Knowledge**
   - Save patterns discovered during implementation
   - Document solutions found for problems
   - Record architectural insights and decisions
   - Save reusable code snippets and approaches
   - **Apply intelligent curation**: Automatically evaluate discoveries using quality thresholds

3. **Create Continuation Instructions**
   - Write clear self-reminder for resumption
   - Specify context needed for smooth continuation
   - List key files and functions to review
   - Include validation commands to run

4. **Execute Compaction**
   - Run `/compact` command to clear context
   - Preserve all critical information in memory-bank files
   - Enable seamless workflow resumption

### Post-Compaction Resumption
After `/compact` execution:
1. Read `memory-bank/active-session/continuation-prompt.md`
2. Review `memory-bank/active-session/workflow-state.md`
3. Validate current project state against latest snapshot
4. Resume workflow from documented position with full context

## Workflow Mode Commands

### Quick Mode Switching
- `#@VAN` - Enter VAN (Validation & Analysis) mode
- `#@PLAN` - Enter PLAN (Planning & Strategy) mode
- `#@CREATIVE` - Enter CREATIVE (Design & Architecture) mode
- `#@IMPLEMENT` - Enter IMPLEMENT (Development & Execution) mode
- `#@REFLECT` - Enter REFLECT (Quality & Validation) mode
- `#@ARCHIVE` - Enter ARCHIVE (Knowledge & Documentation) mode

### Context Management Commands
- `#context-status` - Show current context usage percentage
- `#preserve-now` - Force immediate context preservation
- `#compact-safe` - Preserve context and execute /compact
- `#resume-from [snapshot]` - Resume from specific snapshot
- `#knowledge-search [query]` - Search accumulated knowledge base

### Knowledge Management Commands
- `#recall [topic]` - Search knowledge base for specific topic
- `#patterns` - List all discovered development patterns
- `#decisions` - Review architectural decisions made
- `#solutions [problem]` - Find solutions to similar problems
- `#next` - Proceed to next logical workflow mode

### Intelligent Curation Commands
- `#evaluate-session` - Evaluate all discoveries from current session
- `#evaluate-item [item]` - Evaluate specific item for inclusion
- `#curation-status` - Show current curation queue and statistics
- `#review-queue [priority|all]` - Show items requiring manual review
- `#approve [item-id]` - Manually approve item for inclusion
- `#reject [item-id]` - Manually reject item with rationale
- `#force-include [item]` - Override low score to include
- `#force-exclude [item]` - Override high score to exclude
- `#set-threshold [category] [value]` - Adjust category thresholds
- `#curation-settings` - View/modify curation configuration

### Fractal Workflow Commands
- `#@SUBTASK-VAN [task]` - Apply VAN mode to specific subtask
- `#@SUBTASK-PLAN [task]` - Apply PLAN mode to specific subtask
- `#@SUBTASK-CREATIVE [task]` - Apply CREATIVE mode to specific subtask
- `#@SUBTASK-IMPLEMENT [task]` - Apply IMPLEMENT mode to specific subtask
- `#@SUBTASK-REFLECT [task]` - Apply REFLECT mode to specific subtask
- `#@FRACTAL-WORKFLOW [task]` - Apply full workflow to complex subtask
- `#feedback-loop` - Integrate subtask results back to project level

## Complexity-Based Routing

### Project Complexity Assessment
**Level 1 (Simple)**: Single feature, minimal dependencies
- Workflow: @VAN → @IMPLEMENT → @REFLECT
- Subtask Approach: Simple subtasks complete in single mode

**Level 2 (Moderate)**: Multiple features, some complexity
- Workflow: @VAN → @PLAN → @IMPLEMENT → @REFLECT
- Subtask Approach: Complex subtasks may use mini-workflows

**Level 3 (Complex)**: System changes, architectural decisions
- Workflow: @VAN → @PLAN → @CREATIVE → @IMPLEMENT → @REFLECT → @ARCHIVE
- Subtask Approach: Most subtasks use appropriate mode sequences

**Level 4 (Enterprise)**: Large scale, multiple systems, team coordination
- Workflow: Full 6-mode with multiple iterations and validation cycles
- Subtask Approach: All complex subtasks use full fractal workflows

### Fractal Workflow Activation
**Subtask Complexity Thresholds:**
- **Simple Subtask**: Single mode execution (e.g., @IMPLEMENT only)
- **Moderate Subtask**: 2-3 mode sequence (e.g., @VAN → @IMPLEMENT → @REFLECT)
- **Complex Subtask**: Full 6-mode workflow if beneficial
- **Critical Subtask**: Always use full workflow for high-impact tasks

## Fractal Workflow System

### Core Concept
The fractal workflow applies the full 6-mode cognitive specialization to individual subtasks when beneficial, creating tight feedback loops and higher quality outcomes through iterative refinement.

### Fractal Workflow Benefits
1. **Enhanced Quality**: Each subtask receives full cognitive specialization
2. **Tight Feedback Loops**: Rapid iteration and improvement at subtask level
3. **Risk Reduction**: Early identification of issues within subtasks
4. **Knowledge Accumulation**: Continuous learning and pattern recognition
5. **Scalable Complexity**: Handle complex subtasks with same rigor as projects

### Fractal Workflow Process

#### 1. Subtask Assessment (@SUBTASK-VAN)
- Analyze subtask complexity and requirements
- Determine if fractal workflow is beneficial
- Create subtask-specific mini-tasks.md
- Establish subtask success criteria

#### 2. Subtask Planning (@SUBTASK-PLAN)
- Develop subtask implementation strategy
- Identify subtask dependencies and risks
- Plan subtask testing and validation
- Estimate subtask effort and timeline

#### 3. Subtask Design (@SUBTASK-CREATIVE)
- Explore subtask design alternatives
- Make architectural decisions for subtask
- Design subtask interfaces and contracts
- Validate subtask design against requirements

#### 4. Subtask Implementation (@SUBTASK-IMPLEMENT)
- Implement subtask with full quality practices
- Apply progressive development approach
- Maintain context and progress tracking
- Integrate with broader project architecture

#### 5. Subtask Validation (@SUBTASK-REFLECT)
- Comprehensive subtask quality assessment
- Validate subtask against all criteria
- Identify subtask improvements and optimizations
- Document subtask lessons learned

#### 6. Subtask Integration (#feedback-loop)
- Integrate subtask results back to project level
- Update project-level progress and context
- Apply subtask learnings to project knowledge base
- Validate subtask integration with project goals

### Fractal Workflow Triggers

**Automatic Triggers:**
- Subtask estimated effort > 4 hours
- Subtask involves architectural decisions
- Subtask has multiple dependencies
- Subtask affects system-wide functionality
- Subtask involves new technology or patterns

**Manual Triggers:**
- Use `#@FRACTAL-WORKFLOW [task]` command
- High-risk or critical subtasks
- Subtasks with unclear requirements
- Subtasks requiring creative exploration
- Subtasks with complex validation needs

### Context Management in Fractal Workflows

**Nested Context Preservation:**
- Project-level context preserved separately from subtask context
- Subtask context snapshots created at each mode transition
- Automatic escalation to project-level preservation if needed
- Cross-level context synchronization and validation

**Knowledge Integration:**
- Subtask patterns added to project knowledge base
- Subtask solutions integrated with project solutions
- Subtask decisions linked to project-level decisions
- Continuous knowledge accumulation across levels

## Critical Workflow Rules

### Sacred Principles
- **tasks.md is SACRED** - Single source of truth, never optional
- **Never skip @VAN mode** - Required initialization for all workflows
- **Follow complexity routing** - Level 1-4 determines required workflow path
- **Complete mode transitions** - Must meet exit criteria before proceeding
- **Preserve context automatically** - Never lose progress to context limits

### Mode Transition Gates
Each mode has specific entry and exit criteria:
- **Entry**: Required files and context must be present
- **Processing**: Mode-specific instructions and Think tool integration
- **Exit**: Quality gates must be satisfied before mode transition
- **Validation**: Automatic validation of mode completion criteria

## Think Tool Integration

### Mode-Specific Think Tool Usage
- **@VAN**: Complex project analysis and task decomposition
- **@PLAN**: Multi-step implementation strategy and resource planning
- **@CREATIVE**: Design decision validation and alternative evaluation
- **@IMPLEMENT**: Progress validation and error prevention during coding
- **@REFLECT**: Comprehensive quality assessment and improvement identification
- **@ARCHIVE**: Pattern recognition and knowledge consolidation

### Think Tool Triggers
- Automatic Think tool activation for complex decisions
- Manual Think tool invocation with `#think [context]`
- Cross-mode reasoning validation at transition points
- Quality gate Think tool checkpoints

## Session Management

### CLI Session Integration
- Use `claude -c` for workflow continuity across sessions
- Automatic workflow state preservation
- Cross-session memory persistence through memory-bank files
- Progress tracking and validation across multiple CLI sessions

### Workflow State Tracking
- Current mode and position in workflow
- Tasks completed and remaining
- Files modified and their status
- Decisions made and their rationale
- Next steps and priorities

## Import Structure

### Memory File Imports
```markdown
@memory-bank/workflow-modes/van-mode.md
@memory-bank/workflow-modes/plan-mode.md
@memory-bank/workflow-modes/creative-mode.md
@memory-bank/workflow-modes/implement-mode.md
@memory-bank/workflow-modes/reflect-mode.md
@memory-bank/workflow-modes/archive-mode.md
@memory-bank/core-files/complexity.md
```

## Quality Assurance

### Automatic Validation
- Mode completion verification before transitions
- Context preservation validation before compaction
- Knowledge extraction validation for significant insights
- Workflow integrity checks across sessions

### Manual Validation
- `#validate-workflow` - Check current workflow state integrity
- `#validate-context` - Verify context preservation completeness
- `#validate-knowledge` - Check knowledge base consistency
- `#validate-session` - Validate session state and continuity

## Intelligent Memory Curation System

### Core Curation Principles
- **Quality Over Quantity**: Only high-value information enters the knowledge base
- **Automatic Evaluation**: Multi-criteria scoring prevents memory pollution
- **Smart Thresholds**: Category-specific quality standards with learning optimization
- **Manual Override**: User control with full justification and tracking

### Curation Integration Points
- **@REFLECT Mode**: Automatic evaluation of session discoveries
- **@ARCHIVE Mode**: Comprehensive evaluation before knowledge consolidation
- **Context Preservation**: Smart selection of preservation-worthy content
- **Fractal Workflows**: Quality assessment of subtask learnings before integration

### Evaluation Framework
- **5-Criteria Scoring**: Novelty, Reusability, Impact, Generalizability, Validation
- **Category-Specific Weights**: Optimized scoring for patterns, solutions, decisions, code, testing
- **Think Tool Integration**: Complex evaluation scenarios receive structured reasoning
- **Learning System**: Continuous improvement based on curation decision effectiveness

### Threshold Management
- **Adaptive Thresholds**: Performance-based optimization with user feedback
- **Context-Sensitive**: Project type and domain adjustments
- **User Customization**: Full control over quality standards and decision criteria
- **Effectiveness Tracking**: Comprehensive metrics and continuous improvement

## Development Notes

- **Cognitive Optimization**: Each mode leverages different thinking patterns for maximum effectiveness
- **Context Efficiency**: Intelligent context management prevents workflow interruption
- **Knowledge Accumulation**: Continuous learning and pattern recognition across projects with quality curation
- **CLI Native**: Built specifically for Claude Code's CLI environment and capabilities
- **Session Continuity**: Seamless workflow resumption across multiple CLI sessions
- **Think Tool Integration**: Strategic use of structured reasoning for complex decisions and curation
- **Intelligent Curation**: Automated quality assessment ensures high-value knowledge preservation