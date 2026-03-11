# Prompt: Generate implementation tasks

Read:
- `.specify/spec.md`
- `.specify/plan.md`
- `.specify/memory/constitution.md`
- all files in `specs/`

Create or update task files in `.specify/tasks/`.

Rules:
1. Create small, reviewable tasks.
2. Each task must map back to specific requirements and acceptance criteria.
3. Prefer implementation order that establishes a working happy path early.
4. Include testing/documentation work where appropriate.
5. Do not bundle unrelated concerns into one task.

For each task file include:
- Title
- Goal
- Inputs / context
- Files likely to change
- Steps
- Acceptance checks
- Out of scope
- Dependencies

Name tasks like:
- `001-...md`
- `002-...md`
