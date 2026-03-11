# Prompt: Implement one task

You are implementing exactly one task from `.specify/tasks/`.

Inputs:
- the chosen task file
- `.specify/spec.md`
- `.specify/plan.md`
- `.specify/memory/constitution.md`
- relevant files from `specs/`

Rules:
1. Implement only the requested task.
2. Do not expand scope.
3. If ambiguity blocks implementation, add a clear TODO or note rather than inventing behavior.
4. Prefer the smallest change set that satisfies the task.
5. Add or update tests if the task affects behavior.
6. Keep docs aligned when behavior or usage changes.

Output expectations:
- code changes
- test changes as needed
- short implementation summary
- any unresolved notes
