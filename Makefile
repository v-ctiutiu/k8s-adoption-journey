# Makefile for Mkdocs documentation
#

MKDOCSCMD           ?= mkdocs
PIP_CMD             ?= pip3
VENV_FOLDER         ?= venv
export DOCS_DIR     ?= docs
export SITE_DIR     ?= site
export SITE_URL     ?= https://k8s-adoption-journey.github.io


install-venv:
	@$(PIP_CMD) install virtualenv

venv: install-venv
	@virtualenv $(VENV_FOLDER)

# Pass arguments to mkdocs directly
# This way, you can run: 
#	- `make new` to create a new project
#	- `make build` to build a project
#	- `make serve` to serve a project static content locally
#	etc.
# Also, everything happens in a Python virtual env
%: venv Makefile
	@. venv/bin/activate && \
		$(PIP_CMD) install -r requirements.txt && \
		$(MKDOCSCMD) $@

help: venv
	@. venv/bin/activate && \
		$(PIP_CMD) install -r requirements.txt && \
		$(MKDOCSCMD) --help

clean:
	@echo "Cleaning up python venv ..."
	@rm -rf $(VENV_FOLDER)
	@echo "Cleaning up mkdocs site ..."
	@rm -rf $(SITE_DIR)

.PHONY: install-venv clean help Makefile
