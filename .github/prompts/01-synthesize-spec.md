# Prompt: Synthesize execution spec from human intent

Read all files in `specs/` and update:

- `.specify/spec.md`
- `.specify/memory/constitution.md` only if the project clearly requires additional constraints

Rules:
1. Treat `specs/` as the authoritative source of intent.
2. Preserve the original meaning; do not add speculative features.
3. Convert human-language intent into clear, implementation-ready requirements.
4. Surface ambiguity explicitly under a section called `Open Questions`.
5. Keep the output concise but operational.

Required sections for `.specify/spec.md`:
- Problem statement
- Users and jobs to be done
- Functional requirements
- Non-functional requirements
- Scope boundaries
- Acceptance summary
- Open Questions
- Source files

Do not implement code in this step.
