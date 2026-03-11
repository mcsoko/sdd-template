.PHONY: synthesize constitution plan tasks implement verify clean-tasks

# Synthesize spec and constitution from specs/
synthesize:
	@echo "Open .github/prompts/01-synthesize-spec.md in your agent and apply it to the current repo."

constitution: synthesize

# Generate technical plan
plan:
	@echo "Open .github/prompts/02-generate-plan.md in your agent and apply it to the current repo."

# Generate implementation tasks
tasks:
	@echo "Open .github/prompts/03-generate-tasks.md in your agent and apply it to the current repo."

# Implement a specific task
implement:
	@test -n "$(TASK)" || (echo "Usage: make implement TASK=.specify/tasks/001-something.md" && exit 1)
	@echo "Open .github/prompts/04-implement-task.md and provide TASK=$(TASK) to your agent."

# Verify implementation aligns with intent
verify:
	@echo "Open .github/prompts/05-verify-alignment.md in your agent and apply it to the current repo."

# Remove generated task files
clean-tasks:
	rm -f .specify/tasks/*.md
