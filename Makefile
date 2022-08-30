# Makefile for Mkdocs documentation
#

MKDOCSCMD    		?= mkdocs
export DOCS_DIR  	?= docs
export SITE_DIR		?= site
export SITE_URL		?= https://k8s-adoption-journey.github.io

help:
	@$(MKDOCSCMD) --help

.PHONY: help Makefile

# Pass arguments to mkdocs directly
# This way, you can run: 
#	- `make new` to create a new project
#	- `make build` to build a project
#	- `make serve` to serve a project static content locally
#	etc.
%: Makefile
	@$(MKDOCSCMD) $@
