IMG := pandoc-image
MNT := /workspace

.PHONY: all help refresh

INPUTS := $(wildcard src/*.md)
NAMES := $(patsubst src/%.md,%,$(INPUTS))

# LaTeX often moves figures to place text more efficiently. Turn that off.
PANDOC_FLAGS := -f markdown-implicit_figures --verbose --variable urlcolor=red

all: help

help:
	@echo choices: $(NAMES)

%: src/%.md
	docker run --rm -v $(PWD):$(MNT) -w $(MNT) $(IMG) pandoc  $< -o out/$@.pdf $(PANDOC_FLAGS)

container: Dockerfile
	docker build . -f Dockerfile -t $(IMG)

refresh: Dockerfile
	docker build . -f Dockerfile -t $(IMG) --no-cache
