# Manual Review Curation Queue

**Status**: Active queue management system
**Purpose**: Manage items requiring manual review for curation decisions
**Integration**: Works with evaluation-engine.md and quality-thresholds.md

## 🎯 Current Queue Status

### Queue Summary
```markdown
Total Items Pending: 0
Priority Distribution:
- High Priority: 0
- Medium Priority: 0
- Low Priority: 0

Average Review Time: N/A
Oldest Item Age: N/A
Processing Capacity: 5-10 items per session (recommended)
```

### Queue Processing Statistics
```markdown
Items Processed Today: 0
Items Approved: 0
Items Rejected: 0
Items Modified: 0
Average Decision Time: N/A
Queue Throughput Rate: N/A
```

## 📋 Pending Review Items

### High Priority Queue
```markdown
Items with scores close to auto-include threshold or strategic importance

Format for each entry:
---
ID: queue-high-[timestamp]
Category: [patterns|solutions|decisions|code-snippets|testing-approaches]
Content Summary: [Brief description of the item]
Evaluation Score: [Detailed breakdown]
Review Reason: [Why manual review is needed]
Priority Rationale: [Why this is high priority]
Suggested Decision: [Include|Exclude|Modify]
Context: [Project/session context]
Think Tool Analysis: [If complex evaluation was performed]
Date Added: [Timestamp]
Review Deadline: [Recommended review timeframe]
---

[Items will be added here as they enter the queue]
```

### Medium Priority Queue
```markdown
Items with moderate scores requiring standard review

Format for each entry:
---
ID: queue-medium-[timestamp]
Category: [patterns|solutions|decisions|code-snippets|testing-approaches]
Content Summary: [Brief description of the item]
Evaluation Score: [Detailed breakdown]
Review Reason: [Why manual review is needed]
Suggested Decision: [Include|Exclude|Modify]
Context: [Project/session context]
Think Tool Analysis: [If available]
Date Added: [Timestamp]
Review Deadline: [Standard timeframe]
---

[Items will be added here as they enter the queue]
```

### Low Priority Queue
```markdown
Items that can be reviewed when time permits

Format for each entry:
---
ID: queue-low-[timestamp]
Category: [patterns|solutions|decisions|code-snippets|testing-approaches]
Content Summary: [Brief description of the item]
Evaluation Score: [Detailed breakdown]
Review Reason: [Why manual review is needed]
Suggested Decision: [Include|Exclude|Modify]
Context: [Project/session context]
Date Added: [Timestamp]
Review Deadline: [Extended timeframe]
---

[Items will be added here as they enter the queue]
```

## 🔄 Queue Management Procedures

### Item Addition Process

#### Automatic Queue Addition
```markdown
Triggered when evaluation score falls in manual review range:
1. Evaluation engine determines manual review needed
2. Item added to appropriate priority queue based on:
   - Proximity to auto-include threshold
   - Strategic importance indicators
   - Project context urgency
   - Category-specific priority rules

Priority Assignment Logic:
- High: Score within 0.5 of auto-include threshold
- High: Strategic keywords detected (architecture, performance, security)
- Medium: Standard manual review range
- Low: Lower end of review range, non-urgent context
```

#### Manual Queue Addition
```markdown
User Commands:
- #queue-for-review [item] [priority] - Add specific item to queue
- #bulk-queue [session|category] - Add multiple items for review
- #prioritize-review [item-id] [new-priority] - Change item priority
- #urgent-review [item] - Add item to high priority queue

Queue Addition Requirements:
- Item must have completed initial evaluation
- Rationale for manual review must be documented
- Context and suggested decision must be provided
- Review deadline must be set based on priority
```

### Review Processing Workflow

#### Review Session Initiation
```markdown
Command: #review-queue [priority|all]

Session Setup:
1. Display queue status and item count
2. Sort items by priority and age
3. Prepare evaluation context for each item
4. Begin systematic review process

Recommended Session Limits:
- High Priority: Process all items
- Medium Priority: 5-10 items per session
- Low Priority: 2-5 items per session
- Mixed Session: Prioritize high, then fill with medium/low
```

#### Individual Item Review Process
```markdown
For each item:
1. Display full evaluation context and scoring breakdown
2. Show Think tool analysis if available
3. Present suggested decision with rationale
4. Prompt for user decision: Approve|Reject|Modify|Skip
5. Collect user rationale for decision
6. Update curation-log.md with decision details
7. Process next item or end session

User Decision Options:
- Approve: Include in knowledge base as-is
- Reject: Exclude from knowledge base with rationale
- Modify: Edit item before inclusion
- Skip: Defer decision to later session
- Force Include: Override low score with justification
- Force Exclude: Override high score with justification
```

#### Batch Processing Options
```markdown
Available for similar items:
- #approve-batch [category] [criteria] - Approve multiple similar items
- #reject-batch [category] [criteria] - Reject multiple similar items
- #clear-queue [priority] - Process entire priority level
- #auto-process [score-threshold] - Auto-approve above threshold

Batch Processing Safeguards:
- Require confirmation for batch operations
- Limit batch size to prevent accidental mass operations
- Maintain detailed audit trail for batch decisions
- Allow individual review within batch operations
```

## 🎯 Priority Management System

### Priority Assignment Criteria

#### High Priority Indicators
```markdown
Score-Based:
- Within 0.5 points of auto-include threshold
- Conflicting high/low criteria scores requiring analysis
- Novel patterns with strategic potential
- Critical decisions affecting project architecture

Context-Based:
- Active project blockers requiring immediate decision
- Time-sensitive knowledge with decreasing relevance
- Strategic knowledge for upcoming project phases
- Cross-project applicability with immediate need

Content-Based:
- Security-related patterns or solutions
- Performance optimization discoveries
- Architecture decision frameworks
- Critical bug fixes or debugging techniques
```

#### Medium Priority Indicators
```markdown
Score-Based:
- Standard manual review range scores
- Moderate novelty with uncertain reusability
- Context-specific solutions with potential broader value
- Testing approaches with limited validation

Context-Based:
- Project-specific knowledge with potential future value
- Incremental improvements to existing patterns
- Documentation and learning materials
- Tool and workflow optimizations

Content-Based:
- Code refactoring patterns
- Development process improvements
- Integration techniques and approaches
- Quality assurance methodologies
```

#### Low Priority Indicators
```markdown
Score-Based:
- Lower end of manual review range
- Low impact but potentially interesting patterns
- Experimental approaches with uncertain value
- Edge case solutions with limited applicability

Context-Based:
- Nice-to-have knowledge without immediate application
- Historical context and background information
- Alternative approaches to solved problems
- Research and exploration outcomes

Content-Based:
- Documentation improvements
- Code style and formatting preferences
- Development environment configurations
- Learning resources and references
```

### Dynamic Priority Adjustment

#### Automatic Priority Updates
```markdown
Age-Based Escalation:
- Items older than 7 days: +1 priority level
- Items older than 14 days: +2 priority levels (max High)
- Items older than 30 days: Flag for urgent review or auto-process

Context-Based Escalation:
- Related project work starting: Increase priority
- Deadline approaching: Escalate relevant items
- Similar items being processed: Batch priority increase
- User searching for related topics: Increase priority

Score-Based Adjustments:
- If threshold optimization suggests higher value: Increase priority
- If similar items consistently approved: Increase priority
- If category shows high auto-include accuracy: Decrease priority
- If user frequently overrides category: Increase priority
```

#### Manual Priority Management
```markdown
User Commands:
- #escalate [item-id] [reason] - Increase item priority
- #de-escalate [item-id] [reason] - Decrease item priority
- #urgent [item-id] - Move to high priority immediately
- #defer [item-id] [days] - Lower priority for specified time

Priority Change Documentation:
- Record original and new priority levels
- Document rationale for priority change
- Track effectiveness of priority adjustments
- Update priority assignment algorithms based on outcomes
```

## 📊 Queue Analytics and Optimization

### Queue Performance Metrics

#### Processing Efficiency
```markdown
Metrics Tracked:
- Average time per item review
- Items processed per session
- Queue throughput rate (items per day)
- Backlog growth/reduction trends

Efficiency Targets:
- High Priority: Process within 24 hours
- Medium Priority: Process within 7 days
- Low Priority: Process within 30 days
- Overall Throughput: 10-15 items per active day

Current Performance:
- Average Review Time: N/A
- Daily Throughput: N/A
- Queue Growth Rate: N/A
- Priority SLA Compliance: N/A
```

#### Decision Quality Metrics
```markdown
Metrics Tracked:
- Consistency of decisions across similar items
- Alignment with suggested decisions from evaluation engine
- Long-term value realization of reviewed items
- User satisfaction with review outcomes

Quality Targets:
- Decision Consistency: ≥85%
- Alignment with Suggestions: ≥70%
- Value Realization: ≥80% of approved items used within 90 days
- User Satisfaction: ≥4.0/5.0

Current Performance:
- Decision Consistency: N/A
- Suggestion Alignment: N/A
- Value Realization: N/A
- User Satisfaction: N/A
```

### Queue Optimization Strategies

#### Workload Balancing
```markdown
Session Size Optimization:
- Adjust recommended session sizes based on review time data
- Balance thoroughness with processing efficiency
- Optimize review sequence for cognitive flow
- Implement fatigue detection and session breaks

Queue Size Management:
- Auto-escalate items approaching age limits
- Batch similar items for efficient processing
- Implement queue size alerts and recommendations
- Balance queue growth with processing capacity
```

#### Review Process Improvement
```markdown
Context Enhancement:
- Improve evaluation context presentation
- Provide better decision support tools
- Enhance Think tool integration for complex cases
- Streamline user interface for faster decisions

Decision Support:
- Improve suggested decision accuracy
- Provide confidence levels for suggestions
- Offer decision templates for common scenarios
- Include lessons learned from similar past decisions
```

## 🔧 Integration Commands

### Queue Management Commands
```markdown
#review-queue [priority|all] - Start review session
#queue-status - Show current queue summary
#item-details [item-id] - Show full item evaluation context
#skip-item [item-id] [reason] - Defer item to later session
#bulk-process [criteria] - Process multiple similar items

#queue-analytics - Show queue performance metrics
#queue-optimization - Get queue management recommendations
#queue-export [format] - Export queue for external processing
#queue-import [file] - Import items for review
```

### Decision Processing Commands
```markdown
#approve [item-id] [rationale] - Approve item for inclusion
#reject [item-id] [rationale] - Reject item with reason
#modify [item-id] [changes] - Edit item before inclusion
#force-include [item-id] [justification] - Override low score
#force-exclude [item-id] [justification] - Override high score

#batch-approve [criteria] - Approve multiple matching items
#batch-reject [criteria] - Reject multiple matching items
#review-decision [item-id] - Reconsider previous decision
#decision-rationale [item-id] - View decision reasoning
```

### Queue Configuration Commands
```markdown
#set-queue-limits [high] [medium] [low] - Set priority queue sizes
#configure-escalation [rules] - Set automatic priority escalation
#set-review-targets [throughput] - Set processing targets
#queue-notifications [enable|disable] - Control queue alerts

#export-queue-config - Save current queue configuration
#import-queue-config [file] - Load queue configuration
#reset-queue-config - Restore default queue settings
#queue-maintenance - Perform queue cleanup and optimization
```

---

**Queue Status**: Ready for manual review processing
**Next Steps**: Update CLAUDE.md and integrate with workflow modes
**Dependencies**: Evaluation-engine.md, quality-thresholds.md, curation-log.md