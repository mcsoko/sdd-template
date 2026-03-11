# Prompt: Verify implementation alignment

Read:
- all files in `specs/`
- `.specify/spec.md`
- `.specify/plan.md`
- `.specify/tasks/`
- `.specify/memory/constitution.md`
- relevant code and tests

Produce an alignment review that answers:
1. Does the implementation match the original intent in `specs/`?
2. Does the implementation violate the stated scope boundaries?
3. Are there hidden assumptions not reflected in the specs?
4. Are acceptance criteria actually covered by tests or manual verification steps?
5. What drift exists between `specs/`, `.specify/`, and the code?

Output format:
- Alignment status: green / yellow / red
- Confirmed matches
- Drift or risk
- Missing tests or acceptance gaps
- Recommended updates to specs, plan, tasks, or code
