# Context Window Monitoring System

**Purpose**: Monitor context usage and trigger preservation protocols automatically

## Current Context Status
- **Usage**: Not monitoring (workflow not started)
- **Threshold**: 50% warning, 60% documentation, 70% compaction
- **Last Check**: Never
- **Last Preservation**: Never

## Monitoring Configuration

### Threshold Settings
- **Warning Threshold**: 50% - Prepare for preservation
- **Documentation Threshold**: 60% - Create session snapshot  
- **Compaction Threshold**: 70% - Force preservation and compact
- **Emergency Threshold**: 75% - Immediate compaction

### Monitoring Frequency
- **Automatic**: After each mode transition
- **Manual**: Via `!context-status` command
- **Periodic**: Every 20 significant interactions
- **Triggered**: Before major operations

## Preservation Protocol

### Stage 1: Warning (50% Context)
**Actions:**
- Display context usage warning
- Prepare for documentation mode
- Begin identifying preservation priorities
- Alert user to upcoming preservation need

**Outputs:**
- Warning message in activeContext.md
- Preparation notes in current-focus.md

### Stage 2: Documentation (60% Context)
**Actions:**
- Create comprehensive session snapshot
- Document current implementation state
- Preserve project and subtask progress
- Extract significant knowledge gained
- Prepare continuation instructions

**Outputs:**
- `session-snapshots/snapshot-[timestamp]-auto-project.md`
- `session-snapshots/progress-[timestamp]-project.md`
- `session-snapshots/context-[timestamp]-focus.md`
- Updated knowledge base files

### Stage 3: Compaction (70% Context)
**Actions:**
- Force complete preservation protocol
- Create emergency continuation prompt
- Update all memory-bank files
- Execute `/compact` command automatically
- Prepare for seamless resumption

**Outputs:**
- All Stage 2 outputs plus:
- `active-session/continuation-prompt.md` (updated)
- `active-session/workflow-state.md` (updated)
- Emergency preservation log

### Stage 4: Emergency (75% Context)
**Actions:**
- Immediate forced compaction
- Minimal preservation with focus on continuation
- Alert user to emergency situation
- Ensure critical state is preserved

## Context Preservation Content

### Critical Information Always Preserved
1. **Current workflow state and position**
2. **Active tasks and immediate next steps**
3. **Files being modified and their state**
4. **Key decisions made in current session**
5. **Implementation progress and status**
6. **Knowledge gained and patterns discovered**
7. **Blockers and pending decisions**
8. **Quality assessment results**

### Fractal Workflow Context Preservation
1. **Project-level workflow state**
2. **Active subtask workflow state**
3. **Subtask integration status**
4. **Cross-level knowledge transfer**
5. **Nested context relationships**

## Resumption Protocol

### Post-Compaction Resumption Steps
1. **State Recovery**
   - Read `active-session/continuation-prompt.md`
   - Review `active-session/workflow-state.md`
   - Check latest session snapshots

2. **Context Validation**
   - Validate current project state
   - Verify file system state
   - Check for external changes
   - Confirm tool availability

3. **Workflow Resumption**
   - Restore workflow position
   - Reestablish active context
   - Resume from documented next steps
   - Validate continuation accuracy

4. **Knowledge Integration**
   - Load preserved knowledge base
   - Integrate session learnings
   - Restore decision context
   - Continue pattern recognition

## Context Efficiency Strategies

### Optimization Techniques
- **Selective Preservation**: Focus on critical context
- **Incremental Documentation**: Update files progressively
- **Smart Compression**: Remove redundant information
- **Lazy Loading**: Load context as needed
- **Hierarchical Context**: Organize by importance

### Monitoring Commands
- `!context-status` - Show current context usage
- `!preserve-now` - Force immediate preservation
- `!compact-safe` - Preserve and compact safely
- `!resume-check` - Validate resumption readiness
- `!context-optimize` - Optimize context usage

---
*This system ensures continuous workflow productivity regardless of context limitations*