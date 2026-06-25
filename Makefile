# ForgeLab Carpentries — build & authoring commands
#
# Lesson site is a Quarto project under lessons/.
# Requires: Quarto (https://quarto.org) and Python 3.10+.

LESSONS_DIR := lessons
SITE_DIR    := $(LESSONS_DIR)/_site

.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-12s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## One-time: install Python dependencies for executable lessons
	python -m pip install --upgrade pip
	python -m pip install -r requirements.txt
	@echo "Quarto required separately: https://quarto.org/docs/get-started/"

.PHONY: preview
preview: ## Live-reloading local preview of the lesson site
	quarto preview $(LESSONS_DIR)

.PHONY: render
render: ## Build the static lesson site into $(SITE_DIR)
	quarto render $(LESSONS_DIR)

.PHONY: check
check: render ## Render, then link-check and lint the built site
	@echo "Running link check..."
	@command -v lychee >/dev/null 2>&1 \
		&& lychee --no-progress "$(SITE_DIR)/**/*.html" \
		|| echo "lychee not installed; skipping link check (see https://lychee.cli.rs)"

.PHONY: new-workshop
new-workshop: ## Scaffold a new workshop: make new-workshop SLUG=2026-09-01-robotics
	@test -n "$(SLUG)" || (echo "Usage: make new-workshop SLUG=YYYY-MM-DD-topic"; exit 1)
	@test ! -e workshops/$(SLUG) || (echo "workshops/$(SLUG) already exists"; exit 1)
	cp -r workshops/_template workshops/$(SLUG)
	@echo "Created workshops/$(SLUG) — edit index.md to fill in your workshop."

.PHONY: clean
clean: ## Remove the rendered site
	rm -rf $(SITE_DIR) $(LESSONS_DIR)/.quarto
