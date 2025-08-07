# Makefile for building your CV

SHELL := /bin/bash

# Main TeX source and output
TEX := cv.tex
PDF := cv.pdf

# Dependencies: vars.tex, main setup
DEPENDENCIES := vars.tex MySetup.tex

# Build with latexmk for automatic reruns
LATEXMK := latexmk -interaction=nonstopmode -halt-on-error -pdf

.PHONY: all clean

# Default target: build PDF
all: $(PDF)

# PDF depends on .tex sources
$(PDF): $(TEX) $(DEPENDENCIES)
	@echo "Building $@ from $<"
	$(LATEXMK) $<

# Clean auxiliary files
clean:
	latexmk -C
