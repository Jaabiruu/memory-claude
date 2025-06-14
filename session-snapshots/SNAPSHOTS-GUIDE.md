# Session Snapshots Directory

**Purpose**: Store complete session state snapshots for context preservation and workflow continuity

## Snapshot Types

### Automatic Snapshots
- **Context Threshold Snapshots**: Created when context usage reaches 85%
- **Mode Transition Snapshots**: Created at each major workflow transition
- **Fractal Workflow Snapshots**: Created for complex subtask workflows
- **Pre-Compaction Snapshots**: Created before `/compact` execution

### Manual Snapshots
- **Milestone Snapshots**: Created at major project milestones
- **Decision Point Snapshots**: Created before major decisions
- **Backup Snapshots**: Created for important preservation points

## Snapshot File Naming Convention

```
snapshot-[timestamp]-[type]-[scope].md
progress-[timestamp]-[level].md
context-[timestamp]-[focus].md
```

### Examples
- `snapshot-20240614-130000-auto-project.md`
- `snapshot-20240614-130500-manual-milestone.md`
- `progress-20240614-130000-project.md`
- `progress-20240614-130200-subtask.md`
- `context-20240614-130000-implementation.md`

## Snapshot Content Structure

### Session Snapshot Template
```markdown
# Session Snapshot - [Timestamp]

## Snapshot Metadata
- **Type**: Automatic/Manual
- **Trigger**: Context threshold/Mode transition/Manual
- **Scope**: Project/Subtask
- **Context Usage**: X%

## Workflow State
- **Current Mode**: @MODE_NAME
- **Workflow Level**: Project/Subtask
- **Progress**: X% complete
- **Next Steps**: [Immediate actions]

## Active Context
- **Current Focus**: [What is being worked on]
- **Active Files**: [Files being modified]
- **Pending Decisions**: [Decisions needed]
- **Blockers**: [Current obstacles]

## Implementation State
- **Features Complete**: [List]
- **Features In Progress**: [List]
- **Features Pending**: [List]
- **Technical Debt**: [Known issues]

## Knowledge Gained
- **Patterns Discovered**: [New patterns]
- **Solutions Found**: [Problem solutions]
- **Decisions Made**: [Key decisions]
- **Lessons Learned**: [Insights]

## Continuation Instructions
- **Resume Point**: [Where to continue]
- **Context Needed**: [Required context]
- **Validation Steps**: [Steps to verify state]
- **Immediate Actions**: [Next steps]
```

---
*Snapshots are automatically created to preserve workflow state and enable seamless continuation*