# @VAN Mode - Validation & Analysis Engine

**Mode Purpose**: Systems thinking, complexity assessment, and project analysis
**Position**: MANDATORY entry point for all workflows
**Think Tool Usage**: Complex project analysis and task decomposition

## Mode Objectives

### Primary Goals
1. **Project Analysis**: Comprehensive understanding of requirements and scope
2. **Complexity Assessment**: Determine project complexity level (1-4)
3. **Task Decomposition**: Break down project into manageable tasks
4. **Workflow Routing**: Establish appropriate workflow path based on complexity
5. **Context Initialization**: Set up memory-bank structure for project

### Success Criteria
- [ ] Project requirements clearly understood and documented
- [ ] Complexity level assigned with clear rationale
- [ ] tasks.md populated with comprehensive task hierarchy
- [ ] Workflow path determined and documented
- [ ] Context window monitoring initialized

## VAN Mode Instructions

### Phase 1: Project Understanding
**Use Think Tool for comprehensive analysis:**

1. **Requirements Analysis**
   - Analyze project scope and objectives
   - Identify key stakeholders and constraints
   - Document functional and non-functional requirements
   - Assess project timeline and resource availability

2. **Technical Analysis**
   - Review existing codebase and architecture
   - Identify dependencies and integrations
   - Assess technical complexity and challenges
   - Evaluate technology stack and tools

3. **Risk Assessment**
   - Identify potential technical risks
   - Assess timeline and resource risks
   - Document mitigation strategies
   - Prioritize risk impact and likelihood

### Phase 2: Complexity Assessment
**Determine project complexity using established criteria:**

**Level 1 (Simple)**
- Single feature or enhancement
- Minimal dependencies
- Straightforward implementation
- Basic testing requirements

**Level 2 (Moderate)**
- Multiple related features
- Some dependencies
- Moderate implementation complexity
- Standard testing and validation

**Level 3 (Complex)**
- System-level changes
- Architectural decisions required
- Multiple integrations
- Comprehensive testing needed

**Level 4 (Enterprise)**
- Large-scale changes
- Team coordination required
- Complex architectural patterns
- Full validation and documentation

### Phase 3: Task Decomposition
**Create comprehensive task hierarchy:**

1. **Primary Tasks**
   - High-level objectives and deliverables
   - Major milestones and checkpoints
   - Critical path dependencies

2. **Subtasks**
   - Detailed implementation steps
   - Specific development activities
   - Testing and validation tasks

3. **Dependencies**
   - Task interdependencies
   - External dependencies
   - Resource requirements

### Phase 4: Workflow Routing
**Establish workflow path based on complexity:**

- **Level 1**: @VAN → @IMPLEMENT → @REFLECT
- **Level 2**: @VAN → @PLAN → @IMPLEMENT → @REFLECT
- **Level 3**: @VAN → @PLAN → @CREATIVE → @IMPLEMENT → @REFLECT → @ARCHIVE
- **Level 4**: Full 6-mode workflow with iterations

## Required Outputs

### File Updates
1. **tasks.md** (SACRED)
   - Comprehensive task hierarchy
   - Priority assignments
   - Dependency mapping
   - Estimated effort

2. **complexity.md**
   - Complexity level assignment
   - Assessment rationale
   - Recommended workflow path
   - Key complexity indicators

3. **activeContext.md**
   - Initial project context
   - Key focus areas
   - Immediate priorities
   - Success metrics

4. **progress.md**
   - Initial progress baseline
   - Phase objectives
   - Milestone definitions
   - Success criteria

### Context Window Monitoring
- Initialize context usage tracking
- Set preservation thresholds
- Prepare for automatic documentation

## Exit Criteria

### Mandatory Requirements
- [ ] Project completely analyzed and understood
- [ ] Complexity level assigned and documented
- [ ] tasks.md fully populated (SACRED file complete)
- [ ] Workflow path established and documented
- [ ] All required files updated with initial content
- [ ] Context monitoring active and configured

### Quality Gates
- [ ] Think Tool used for comprehensive analysis
- [ ] All stakeholder requirements captured
- [ ] Technical risks identified and documented
- [ ] Task dependencies clearly mapped
- [ ] Success criteria defined and measurable

## Next Mode Transition

**Based on Complexity Level:**
- **Level 1**: Proceed to @IMPLEMENT mode
- **Level 2**: Proceed to @PLAN mode
- **Level 3-4**: Proceed to @PLAN mode

**Transition Command**: `!@PLAN` or `!@IMPLEMENT` based on complexity

## Context Preservation Notes

### Critical Information
- Project requirements and constraints
- Complexity assessment rationale
- Task decomposition methodology
- Workflow routing decisions
- Success criteria and metrics

### Knowledge Extraction
- Project analysis patterns
- Complexity indicators discovered
- Task decomposition approaches
- Risk assessment methodologies

---
**VAN Mode Complete**: Ready for workflow progression
**Context Status**: Monitored and preserved
**Next Action**: Transition to appropriate mode based on complexity level