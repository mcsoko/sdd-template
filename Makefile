.PHONY: synthesize plan tasks implement verify clean-tasks

synthesize:
	@echo "Open .spec-agent/prompts/01-synthesize-spec.md in your agent and apply it to the current repo."

plan:
	@echo "Open .spec-agent/prompts/02-generate-plan.md in your agent and apply it to the current repo."

tasks:
	@echo "Open .spec-agent/prompts/03-generate-tasks.md in your agent and apply it to the current repo."

implement:
	@test -n "$(TASK)" || (echo "Usage: make implement TASK=.specify/tasks/001-something.md" && exit 1)
	@echo "Open .spec-agent/prompts/04-implement-task.md and provide TASK=$(TASK) to your agent."

verify:
	@echo "Open .spec-agent/prompts/05-verify-alignment.md in your agent and apply it to the current repo."

clean-tasks:
	rm -f .specify/tasks/*.md
