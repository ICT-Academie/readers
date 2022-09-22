# We're setting a few shell flags:
# -e will terminate the shell on any command that returns a non-zero exit status
# -u check very strictly if the script is using variables that are actually set
# -o pipefail prevents errors in pipelines being hidden

# only set -o pipefail if we can set the SHELL to bash
# Ubuntu runs dash under /bin/sh which doesn't support -o pipefail
ifneq (,$(wildcard /bin/bash))
	SHELL := /bin/bash -euo pipefail
else
	SHELL := /bin/sh -eu
endif

validate_reader:
	if [[ ! -f "$(reader)/$(reader).md" ]]; then echo "Error: Unknown reader."; exit 1; fi
	if [[ "$(reader)" == "README" ]]; then echo "Nice try."; exit 1; fi

build: validate_reader
	cd $(reader); \
	pandoc $(reader).md \
		--toc \
		-s \
		-o ../dist/$(reader).pdf \
		--pdf-engine=xelatex \
		--highlight-style espresso \
		-H ../headers.tex \
		--include-before-body cover.tex

buildopen: build
	open dist/$(reader).pdf
