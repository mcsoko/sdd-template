# Example feature workflow

1. Fill out the `specs/` files.
2. Run `make synthesize` and use `.github/prompts/01-synthesize-spec.md` with your agent.
3. Run `make plan`.
4. Run `make tasks`.
5. Pick the first task and run `make implement TASK=.specify/tasks/001-example.md`.
6. Run `make verify`.

This example folder exists only to illustrate the sequence.
