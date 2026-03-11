# AI-Native Spec-Driven Template Repo

A template for personal projects combining:

- **structured human intent** — capture what you mean in multiple perspectives
- **AI synthesis** — turn intent into executable specs, plans, and tasks
- **explicit agent prompts** — code generation follows specs instead of improvising

## Core idea

Two layers work together:

### 1. Human intent layer
Structured files in `specs/` capture what you actually mean. Fill these out before synthesis.

- `specs/001-product-overview.md`
- `specs/002-interface-contract.md`
- `specs/003-domain-model.md`
- `specs/004-acceptance-criteria.md`
- `specs/005-technical-approach.md`

### 2. AI execution layer
These live under `.specify/` and turn intent into a repeatable workflow.

- `.specify/memory/constitution.md` — project principles and guardrails
- `.specify/spec.md` — synthesized requirements (from `specs/`)
- `.specify/plan.md` — technical implementation plan
- `.specify/tasks/` — actionable task files

**`specs/` is the source of truth.** `.specify/` contains derived artifacts that can be regenerated.

## Workflow

1. **Write intent** — Fill out `specs/`.
2. **Synthesize** — Use prompt 01 to create `.specify/spec.md` and constitution from `specs/`.
3. **Plan** — Use prompt 02 to create `.specify/plan.md`.
4. **Tasks** — Use prompt 03 to create `.specify/tasks/`.
5. **Implement** — Use prompt 04 with a specific task file.
6. **Verify** — Use prompt 05 to check implementation vs intent.

Specs are living documents: version-controlled, evolving alongside code.

## Operating rules

1. `specs/` wins over `.specify/` if they disagree.
2. Agents may not invent scope not described by the specs.
3. Agents should prefer TODO markers over fabricated decisions.
4. Every task should reference acceptance criteria.
5. After implementation, re-run verification before merging.
6. Use Given/When/Then for acceptance criteria where it helps clarity.

## Commands

```bash
make synthesize
make plan
make tasks
make implement TASK=.specify/tasks/001-example.md
make verify
```

Wire these to Cursor, Claude Code, Codex, Gemini CLI, Copilot, or your own wrapper.

## Repository layout

```text
sdd-template/
├── README.md
├── Makefile
├── specs/
│   ├── 001-product-overview.md
│   ├── 002-interface-contract.md
│   ├── 003-domain-model.md
│   ├── 004-acceptance-criteria.md
│   └── 005-technical-approach.md
├── .specify/
│   ├── memory/
│   │   └── constitution.md
│   ├── spec.md
│   ├── plan.md
│   ├── tasks/
│   ├── scripts/
│   └── templates/
├── .github/
│   └── prompts/
│       ├── 01-synthesize-spec.md
│       ├── 02-generate-plan.md
│       ├── 03-generate-tasks.md
│       ├── 04-implement-task.md
│       └── 05-verify-alignment.md
├── src/
├── tests/
└── scripts/
```

## Directory roles

| Directory | Role |
|-----------|------|
| `specs/` | Human-authored intent and acceptance criteria |
| `.specify/` | Derived execution artifacts (regenerable) |
| `.specify/memory/` | Project constitution and principles |
| `.specify/scripts/` | Automation scripts |
| `.specify/templates/` | Spec, plan, task templates |
| `.github/prompts/` | Agent prompt files |
| `src/`, `tests/` | Implementation and executable proof |
| `scripts/` | Project-specific automation |

## Compatibility

Works with Cursor, Claude Code, GitHub Copilot, Gemini CLI, Codex, Windsurf, and generic agents. The `.specify/` layout is compatible with [Spec Kit](https://github.com/github/spec-kit) if you later want to use its CLI.
