# Intelligent Memory Curation - Evaluation Engine

**Status**: Core curation system component
**Purpose**: Automatically evaluate information quality for memory bank inclusion
**Integration**: Works with all workflow modes and knowledge base categories

## 🧠 Core Evaluation Framework

### Multi-Criteria Scoring System (0-10 scale each)

#### 1. Novelty Score Assessment
```markdown
Evaluation Criteria:
- 10: Completely new pattern/solution never encountered
- 7-9: New variation with significant unique aspects
- 4-6: Moderate novelty with some distinctive elements
- 1-3: Minor variation of existing knowledge
- 0: Exact duplicate of existing information

Think Tool Trigger: Use when assessing pattern uniqueness or similarity to existing knowledge
```

#### 2. Reusability Score Assessment
```markdown
Evaluation Criteria:
- 10: Highly reusable across many projects and contexts
- 7-9: Reusable in similar project types or domains
- 4-6: Moderate reusability with adaptation needed
- 1-3: Limited reusability, very context-specific
- 0: Single-use only, no future application

Think Tool Trigger: Use when evaluating cross-project applicability
```

#### 3. Impact Score Assessment
```markdown
Evaluation Criteria:
- 10: Critical to project success, major breakthrough
- 7-9: Significant positive impact on outcomes
- 4-6: Moderate impact, noticeable improvement
- 1-3: Minor impact, small optimization
- 0: No measurable impact

Think Tool Trigger: Use when impact assessment is complex or multi-faceted
```

#### 4. Generalizability Score Assessment
```markdown
Evaluation Criteria:
- 10: Applies broadly across domains and technologies
- 7-9: Applies across similar technologies/domains
- 4-6: Applies within specific technology stack
- 1-3: Applies only to specific tools/libraries
- 0: Extremely specific, no broader application

Think Tool Trigger: Use when evaluating cross-domain applicability
```

#### 5. Validation Score Assessment
```markdown
Evaluation Criteria:
- 10: Thoroughly tested and proven effective
- 7-9: Well-tested with good evidence
- 4-6: Some testing, appears effective
- 1-3: Limited testing, uncertain effectiveness
- 0: Untested or known problematic

Think Tool Trigger: Use when validation evidence is mixed or unclear
```

## 📊 Composite Score Calculation

### Primary Algorithm
```
Total Score = (Novelty × 0.25) + (Reusability × 0.25) + (Impact × 0.20) + (Generalizability × 0.15) + (Validation × 0.15)
Maximum Score = 10.0
```

### Category-Specific Weight Adjustments

#### Patterns (patterns-learned.md)
```
Adjusted Score = (Novelty × 0.30) + (Reusability × 0.25) + (Impact × 0.20) + (Generalizability × 0.15) + (Validation × 0.10)
Emphasis: Novelty and reusability for pattern recognition
```

#### Solutions (solutions-found.md)
```
Adjusted Score = (Novelty × 0.20) + (Reusability × 0.25) + (Impact × 0.25) + (Generalizability × 0.15) + (Validation × 0.15)
Emphasis: Impact and reusability for problem-solving
```

#### Code Snippets (code-snippets.md)
```
Adjusted Score = (Novelty × 0.15) + (Reusability × 0.35) + (Impact × 0.15) + (Generalizability × 0.20) + (Validation × 0.15)
Emphasis: Reusability and generalizability for code reuse
```

## 🔄 Automatic Evaluation Process

### Evaluation Triggers
1. **@REFLECT Mode**: Automatic evaluation of session discoveries
2. **@ARCHIVE Mode**: Comprehensive evaluation before storage
3. **Context Preservation**: Smart selection of preservation-worthy content
4. **Manual Command**: `@evaluate-item [item]` or `@evaluate-session`

### Evaluation Workflow

#### Step 1: Information Extraction
```markdown
Extract from candidate information:
- Content type and context
- Technical domain and scope
- Implementation details
- Testing/validation evidence
- Potential use cases
```

#### Step 2: Similarity Analysis
```markdown
Compare against existing knowledge base:
- Check for exact duplicates
- Assess pattern similarity
- Identify incremental improvements
- Note conflicting information
```

#### Step 3: Scoring Application
```markdown
Apply category-specific scoring:
- Use appropriate weight adjustments
- Consider special criteria
- Document scoring rationale
- Flag borderline cases for review
```

#### Step 4: Decision Processing
```markdown
Based on composite score:
- Auto-include: Above category threshold
- Manual review: Within review range
- Auto-exclude: Below minimum threshold
- Special handling: Override conditions
```

## 🤔 Think Tool Integration

### Complex Evaluation Scenarios

#### Borderline Case Analysis
```markdown
Use Think tool when:
- Composite score falls in manual review range (typically 4.0-7.0)
- Conflicting criteria scores (high novelty, low validation)
- Similar existing patterns require nuanced comparison
- Multi-domain applicability assessment needed

Think Tool Prompt Template:
"Evaluate this [information type] for memory bank inclusion:
Content: [content description]
Existing similar patterns: [list]
Scoring rationale needed for: [specific criteria]
Context: [project/session context]"
```

#### Duplicate Detection Enhancement
```markdown
Use Think tool for:
- Assessing if variation is significant enough to warrant separate storage
- Determining if new information should replace existing
- Evaluating merger vs separate storage for related patterns
- Cross-referencing multi-category relevance

Think Tool Prompt Template:
"Analyze similarity between new and existing information:
New: [new information]
Existing: [existing information]
Determine: Replace, merge, separate storage, or discard
Reasoning: [specific comparison criteria]"
```

#### Quality Trade-off Analysis
```markdown
Use Think tool for:
- High impact but low generalizability items
- Well-validated but low novelty solutions
- Highly novel but unvalidated patterns
- Context-specific but critical decisions

Think Tool Prompt Template:
"Analyze quality trade-offs for curation decision:
Item: [description]
High scores: [criteria with high scores]
Low scores: [criteria with low scores]
Context: [current project needs vs long-term value]
Recommendation needed: Include, exclude, or conditional storage"
```

## 📋 Manual Override System

### Override Triggers
- User command: `@force-include [item]` or `@force-exclude [item]`
- Think tool recommendation for complex cases
- Category-specific special handling rules
- Strategic knowledge preservation needs

### Override Documentation
```markdown
For each override, document:
- Original evaluation score and rationale
- Override reason and justification
- Expected future value or strategic importance
- Review date for effectiveness assessment
```

### Learning Integration
- Track override patterns for threshold optimization
- Identify recurring evaluation blind spots
- Refine scoring criteria based on override analysis
- Improve Think tool prompt effectiveness

## 🎯 Category-Specific Evaluation Logic

### Patterns (patterns-learned.md)
```markdown
Special Considerations:
- Proven effectiveness across multiple projects
- Clear implementation guidelines
- Measurable improvement outcomes
- Broad applicability demonstration

Enhanced Scoring:
- Bonus for cross-project validation (+0.5)
- Penalty for single-use patterns (-1.0)
- Bonus for pattern evolution documentation (+0.3)
```

### Solutions (solutions-found.md)
```markdown
Special Considerations:
- Problem complexity and elegance of solution
- Time/effort savings demonstrated
- Error prevention or debugging effectiveness
- Integration simplicity and maintenance

Enhanced Scoring:
- Bonus for complex problem solutions (+0.5)
- Bonus for elegant/simple implementation (+0.3)
- Penalty for brittle or complex solutions (-0.5)
```

### Decisions (decisions-made.md)
```markdown
Special Considerations:
- Decision impact on project architecture
- Quality of rationale and alternatives considered
- Long-term implications and reversibility
- Learning value for future decisions

Enhanced Scoring:
- Bonus for architectural decisions (+0.5)
- Bonus for well-documented trade-offs (+0.3)
- Penalty for poorly reasoned decisions (-1.0)
```

### Code Snippets (code-snippets.md)
```markdown
Special Considerations:
- Code quality, readability, and maintainability
- Performance characteristics and optimization
- Error handling and edge case coverage
- Documentation and usage examples

Enhanced Scoring:
- Bonus for excellent code quality (+0.5)
- Bonus for comprehensive error handling (+0.3)
- Penalty for poor code practices (-1.0)
```

### Testing Approaches (testing-approaches.md)
```markdown
Special Considerations:
- Testing effectiveness and coverage improvement
- Implementation simplicity and maintenance
- Integration with existing testing frameworks
- Debugging and development workflow enhancement

Enhanced Scoring:
- Bonus for significant coverage improvement (+0.5)
- Bonus for workflow enhancement (+0.3)
- Penalty for testing overhead without benefit (-0.5)
```

## 🔧 Technical Implementation

### Evaluation State Management
```markdown
Store evaluation state in:
- Current session evaluations: active-session/current-evaluations.md
- Pending manual reviews: curation-queue.md
- Historical decisions: curation-log.md
- Threshold effectiveness: quality-thresholds.md
```

### Integration Points
```markdown
Workflow Mode Integration:
- @REFLECT: Trigger evaluation for session discoveries
- @ARCHIVE: Comprehensive pre-storage evaluation
- Context Preservation: Evaluate preservation candidates
- Fractal Workflows: Evaluate subtask learnings

Command Integration:
- @evaluate-session: Batch evaluate current session
- @evaluate-item [item]: Evaluate specific item
- @review-queue: Process manual review items
- @curation-status: Show evaluation statistics
```

### Error Handling
```markdown
Graceful degradation for:
- Missing evaluation criteria
- Unavailable Think tool integration
- Incomplete information for scoring
- System performance constraints

Fallback procedures:
- Default to manual review for incomplete evaluations
- Use simplified scoring when Think tool unavailable
- Maintain audit trail for all evaluation decisions
- Preserve original information pending re-evaluation
```

## 📈 Effectiveness Monitoring

### Evaluation Quality Metrics
- Accuracy of automatic inclusion/exclusion decisions
- Frequency of manual overrides and their patterns
- User satisfaction with curated knowledge quality
- Search effectiveness improvement over time

### System Learning Integration
- Track threshold effectiveness across different project types
- Identify evaluation criteria that correlate with long-term value
- Refine Think tool prompts based on decision quality
- Optimize scoring weights based on outcome analysis

### Continuous Improvement Process
- Monthly review of curation decision effectiveness
- Quarterly threshold optimization based on accumulated data
- Annual evaluation framework refinement
- User feedback integration for scoring criteria enhancement

---

**Integration Status**: Ready for integration with existing workflow modes
**Next Steps**: Create quality-thresholds.md and integrate with @REFLECT and @ARCHIVE modes
**Dependencies**: Existing Think tool integration patterns, knowledge base structure