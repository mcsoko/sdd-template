# Hybrid Spec-Driven Template Repo

This template combines:

- human-friendly specs for intent clarity
- a structured AI pipeline for plan/task generation
- explicit agent instructions so code generation follows the specs instead of improvising

## Core idea

Two layers work together:

### 1. Human intent layer
These files capture what you actually mean.

- `specs/001-product-overview.md`
- `specs/002-interface-contract.md`
- `specs/003-domain-model.md`
- `specs/004-acceptance-criteria.md`
- `specs/005-technical-approach.md`

### 2. AI execution layer
These files turn intent into a repeatable implementation workflow.

- `.specify/spec.md`
- `.specify/plan.md`
- `.specify/tasks/*.md`
- `.specify/constitution.md`
- `.spec-agent/prompts/*.md`

The `specs/` directory is the source of truth for intent.
The `.specify/` directory is the operational pipeline used by agents.

## Recommended workflow

### Phase 1: Write intent
Fill out the files in `specs/`.

### Phase 2: Synthesize the execution spec
Use `.spec-agent/prompts/01-synthesize-spec.md` with your coding agent.
This creates or updates:

- `.specify/spec.md`
- `.specify/constitution.md`

### Phase 3: Generate the plan
Use `.spec-agent/prompts/02-generate-plan.md`.
This creates or updates:

- `.specify/plan.md`

### Phase 4: Generate implementation tasks
Use `.spec-agent/prompts/03-generate-tasks.md`.
This creates task files in:

- `.specify/tasks/`

### Phase 5: Implement one task at a time
Use `.spec-agent/prompts/04-implement-task.md`.
Point the agent at a specific task file.

### Phase 6: Verify against intent
Use `.spec-agent/prompts/05-verify-alignment.md`.
This checks whether implementation still matches the human intent in `specs/`.

## Suggested operating rules

1. `specs/` wins over `.specify/` if they disagree.
2. Agents may not invent scope not described by the specs.
3. Agents should prefer TODO markers over fabricated decisions.
4. Every task should reference acceptance criteria.
5. After implementation, re-run verification before merging.

## Suggested commands

These are placeholders for your preferred agent tool.

```bash
make synthesize
make plan
make tasks
make implement TASK=.specify/tasks/001-example.md
make verify
```

You can wire these to Cursor, Claude Code, Codex, Gemini CLI, or your own wrapper script.
