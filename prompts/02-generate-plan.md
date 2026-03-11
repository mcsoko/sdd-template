# Prompt: Generate technical plan

Read:
- `.specify/spec.md`
- `.specify/constitution.md`
- all files in `specs/`

Update `.specify/plan.md`.

Rules:
1. Plan only what is necessary for v1 scope.
2. Respect the project constitution.
3. Explicitly connect architecture choices to the requirements.
4. Separate known decisions from deferred decisions.
5. Call out risks and unknowns.

Required sections:
- Architecture summary
- Major modules/components
- Data flow
- Implementation phases
- Testing strategy
- Risks / unknowns
- Deferred decisions

Do not generate task files yet.
Do not implement code in this step.
